; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_crypto.c_ubifs_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_crypto.c_ubifs_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_data_node = type { i32, i32 }

@UBIFS_CIPHER_BLOCK_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"fscrypt_encrypt_block_inplace() failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_encrypt(%struct.inode* %0, %struct.ubifs_data_node* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ubifs_data_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ubifs_data_node* %1, %struct.ubifs_data_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %12, align 8
  %21 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %8, align 8
  %22 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %21, i32 0, i32 1
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @UBIFS_CIPHER_BLOCK_SIZE, align 4
  %26 = call i32 @round_up(i32 %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ule i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubifs_assert(%struct.ubifs_info* %27, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %8, align 8
  %37 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %5
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub i32 %46, %47
  %49 = call i32 @memset(i8* %45, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %41, %5
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @virt_to_page(i8* %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @offset_in_page(i8* %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @GFP_NOFS, align 4
  %59 = call i32 @fscrypt_encrypt_block_inplace(%struct.inode* %51, i32 %53, i32 %54, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @ubifs_err(%struct.ubifs_info* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fscrypt_encrypt_block_inplace(%struct.inode*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
