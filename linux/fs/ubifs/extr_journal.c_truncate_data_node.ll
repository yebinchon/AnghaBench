; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_truncate_data_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_truncate_data_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32 }
%struct.ubifs_data_node = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WORST_COMPR_FACTOR = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, i32, %struct.ubifs_data_node*, i32*)* @truncate_data_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_data_node(%struct.ubifs_info* %0, %struct.inode* %1, i32 %2, %struct.ubifs_data_node* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_data_node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ubifs_data_node* %3, %struct.ubifs_data_node** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %19 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* @WORST_COMPR_FACTOR, align 4
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call i8* @kmalloc_array(i32 %22, i32 %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %123

31:                                               ; preds = %5
  %32 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %33 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %17, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %40 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i64 @ubifs_crypt_is_encrypted(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %31
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ubifs_decrypt(%struct.inode* %47, %struct.ubifs_data_node* %48, i32* %14, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %119

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %16, align 4
  br label %81

62:                                               ; preds = %55
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %64 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %65 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %64, i32 0, i32 3
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @ubifs_decompress(%struct.ubifs_info* %63, i32* %65, i32 %66, i8* %67, i32* %16, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %119

73:                                               ; preds = %62
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %79 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %78, i32 0, i32 3
  %80 = call i32 @ubifs_compress(%struct.ubifs_info* %74, i8* %75, i32 %77, i32* %79, i32* %16, i32* %15)
  br label %81

81:                                               ; preds = %73, %59
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i64 @ubifs_crypt_is_encrypted(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ubifs_encrypt(%struct.inode* %86, %struct.ubifs_data_node* %87, i32 %88, i32* %17, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %119

94:                                               ; preds = %85
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %16, align 4
  br label %99

96:                                               ; preds = %81
  %97 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %98 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %94
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %103 = icmp sle i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ubifs_assert(%struct.ubifs_info* %100, i32 %104)
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @cpu_to_le16(i32 %106)
  %108 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %109 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cpu_to_le32(i32 %111)
  %113 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %10, align 8
  %114 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %99, %93, %72, %53
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @kfree(i8* %120)
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %28
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ubifs_crypt_is_encrypted(%struct.inode*) #1

declare dso_local i32 @ubifs_decrypt(%struct.inode*, %struct.ubifs_data_node*, i32*, i32) #1

declare dso_local i32 @ubifs_decompress(%struct.ubifs_info*, i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ubifs_compress(%struct.ubifs_info*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ubifs_encrypt(%struct.inode*, %struct.ubifs_data_node*, i32, i32*, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
