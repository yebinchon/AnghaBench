; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c___ext4_check_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c___ext4_check_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"directory entry overrun\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"inode out of bounds\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"bad entry in directory: %s - offset=%u, inode=%u, rec_len=%d, name_len=%d, size=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ext4_check_dir_entry(i8* %0, i32 %1, %struct.inode* %2, %struct.file* %3, %struct.ext4_dir_entry_2* %4, %struct.buffer_head* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.ext4_dir_entry_2*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.inode* %2, %struct.inode** %13, align 8
  store %struct.file* %3, %struct.file** %14, align 8
  store %struct.ext4_dir_entry_2* %4, %struct.ext4_dir_entry_2** %15, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %22 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %23 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %13, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ext4_rec_len_from_disk(i32 %24, i32 %29)
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %21, align 4
  %32 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %33 = icmp slt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %9
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %98

38:                                               ; preds = %9
  %39 = load i32, i32* %21, align 4
  %40 = srem i32 %39, 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %97

46:                                               ; preds = %38
  %47 = load i32, i32* %21, align 4
  %48 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %49 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @EXT4_DIR_REC_LEN(i32 %50)
  %52 = icmp slt i32 %47, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  br label %96

57:                                               ; preds = %46
  %58 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %59 = bitcast %struct.ext4_dir_entry_2* %58 to i8*
  %60 = load i8*, i8** %17, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %95

74:                                               ; preds = %57
  %75 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %76 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32_to_cpu(i32 %77)
  %79 = load %struct.inode*, %struct.inode** %13, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = call %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_6__* %81)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = icmp sgt i64 %78, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %94

93:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %140

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %56
  br label %97

97:                                               ; preds = %96, %45
  br label %98

98:                                               ; preds = %97, %37
  %99 = load %struct.file*, %struct.file** %14, align 8
  %100 = icmp ne %struct.file* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load %struct.file*, %struct.file** %14, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %20, align 8
  %109 = load i32, i32* %19, align 4
  %110 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %111 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le32_to_cpu(i32 %112)
  %114 = load i32, i32* %21, align 4
  %115 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %116 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @ext4_error_file(%struct.file* %102, i8* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8* %108, i32 %109, i64 %113, i32 %114, i32 %117, i32 %118)
  br label %139

120:                                              ; preds = %98
  %121 = load %struct.inode*, %struct.inode** %13, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %20, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %130 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @le32_to_cpu(i32 %131)
  %133 = load i32, i32* %21, align 4
  %134 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %135 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @ext4_error_inode(%struct.inode* %121, i8* %122, i32 %123, i32 %126, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8* %127, i32 %128, i64 %132, i32 %133, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %120, %101
  store i32 1, i32* %10, align 4
  br label %140

140:                                              ; preds = %139, %93
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @ext4_error_file(%struct.file*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ext4_error_inode(%struct.inode*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
