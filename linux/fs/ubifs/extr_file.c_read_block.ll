; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_data_node = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%union.ubifs_key = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"bad data node (block %u, inode %lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, %struct.ubifs_data_node*)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(%struct.inode* %0, i8* %1, i32 %2, %struct.ubifs_data_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_data_node*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.ubifs_key, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ubifs_data_node* %3, %struct.ubifs_data_node** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %10, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @data_key_init(%struct.ubifs_info* %21, %union.ubifs_key* %14, i32 %24, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %28 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %29 = call i32 @ubifs_tnc_lookup(%struct.ubifs_info* %27, %union.ubifs_key* %14, %struct.ubifs_data_node* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %137

43:                                               ; preds = %4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %45 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %46 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le64_to_cpu(i32 %48)
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call %struct.TYPE_6__* @ubifs_inode(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %49, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ubifs_assert(%struct.ubifs_info* %44, i32 %55)
  %57 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %58 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %43
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %43
  br label %125

69:                                               ; preds = %64
  %70 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %71 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le32_to_cpu(i32 %73)
  %75 = load i8*, i8** @UBIFS_DATA_NODE_SZ, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i64 @ubifs_crypt_is_encrypted(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %69
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @ubifs_decrypt(%struct.inode* %84, %struct.ubifs_data_node* %85, i32* %15, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %125

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  store i32 %93, i32* %13, align 4
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %95 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %96 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %95, i32 0, i32 1
  %97 = load i32, i32* %15, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %100 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = call i32 @ubifs_decompress(%struct.ubifs_info* %94, i32* %96, i32 %97, i8* %98, i32* %13, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %92
  br label %125

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %116, i64 %118
  %120 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 @memset(i8* %119, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %115, %111
  store i32 0, i32* %5, align 4
  br label %137

125:                                              ; preds = %110, %90, %68
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ubifs_err(%struct.ubifs_info* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %130)
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %133 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %134 = call i32 @ubifs_dump_node(%struct.ubifs_info* %132, %struct.ubifs_data_node* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %125, %124, %41
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @data_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, i32) #1

declare dso_local i32 @ubifs_tnc_lookup(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_data_node*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @ubifs_inode(%struct.inode*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ubifs_crypt_is_encrypted(%struct.inode*) #1

declare dso_local i32 @ubifs_decrypt(%struct.inode*, %struct.ubifs_data_node*, i32*, i32) #1

declare dso_local i32 @ubifs_decompress(%struct.ubifs_info*, i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_data_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
