; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_crypto.c_ubifs_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_crypto.c_ubifs_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_data_node = type { i32, i32 }

@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad compr_size: %i\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"fscrypt_decrypt_block_inplace() failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_decrypt(%struct.inode* %0, %struct.ubifs_data_node* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ubifs_data_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ubifs_data_node* %1, %struct.ubifs_data_node** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %10, align 8
  %19 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %7, align 8
  %20 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ule i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27, %4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ubifs_err(%struct.ubifs_info* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %31
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %45 = icmp ule i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubifs_assert(%struct.ubifs_info* %42, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %7, align 8
  %50 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %49, i32 0, i32 0
  %51 = call i32 @virt_to_page(i32* %50)
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %7, align 8
  %54 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %53, i32 0, i32 0
  %55 = call i32 @offset_in_page(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @fscrypt_decrypt_block_inplace(%struct.inode* %48, i32 %51, i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ubifs_err(%struct.ubifs_info* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %41
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %60, %35
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @fscrypt_decrypt_block_inplace(%struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i32 @offset_in_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
