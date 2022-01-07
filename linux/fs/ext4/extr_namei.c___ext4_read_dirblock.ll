; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c___ext4_read_dirblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c___ext4_read_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.inode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ext4_dir_entry = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"inode #%lu: lblock %lu: comm %s: error %ld reading directory block\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@INDEX = common dso_local global i64 0, align 8
@DIRENT_HTREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Directory hole found for htree %s block\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"leaf\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"directory leaf block found instead of index block\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Directory index failed checksum\00", align 1
@EFSBADCRC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Directory block failed checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i64, i64, i8*, i32)* @__ext4_read_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @__ext4_read_dirblock(%struct.inode* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ext4_dir_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %15, i64 %16, i32 0)
  store %struct.buffer_head* %17, %struct.buffer_head** %12, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %19 = call i64 @IS_ERR(%struct.buffer_head* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %5
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = call i32 @PTR_ERR(%struct.buffer_head* %34)
  %36 = call i32 @__ext4_warning(%struct.TYPE_4__* %24, i8* %25, i32 %26, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30, i32 %33, i32 %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %6, align 8
  br label %180

38:                                               ; preds = %5
  %39 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %40 = icmp ne %struct.buffer_head* %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @INDEX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @DIRENT_HTREE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45, %41
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @INDEX, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (%struct.inode*, i8*, i32, i64, i8*, ...) @ext4_error_inode(%struct.inode* %50, i8* %51, i32 %52, i64 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @EFSCORRUPTED, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.buffer_head* @ERR_PTR(i32 %61)
  store %struct.buffer_head* %62, %struct.buffer_head** %6, align 8
  br label %180

63:                                               ; preds = %45, %38
  %64 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %65 = icmp ne %struct.buffer_head* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %180

67:                                               ; preds = %63
  %68 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.ext4_dir_entry*
  store %struct.ext4_dir_entry* %71, %struct.ext4_dir_entry** %13, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = call i64 @is_dx(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %14, align 4
  br label %97

79:                                               ; preds = %75
  %80 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %13, align 8
  %81 = getelementptr inbounds %struct.ext4_dir_entry, %struct.ext4_dir_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ext4_rec_len_from_disk(i32 %82, i32 %87)
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  store i32 1, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %79
  br label %97

97:                                               ; preds = %96, %78
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @INDEX, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 (%struct.inode*, i8*, i32, i64, i8*, ...) @ext4_error_inode(%struct.inode* %106, i8* %107, i32 %108, i64 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %112 = call i32 @brelse(%struct.buffer_head* %111)
  %113 = load i32, i32* @EFSCORRUPTED, align 4
  %114 = sub nsw i32 0, %113
  %115 = call %struct.buffer_head* @ERR_PTR(i32 %114)
  store %struct.buffer_head* %115, %struct.buffer_head** %6, align 8
  br label %180

116:                                              ; preds = %101, %98
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 @ext4_has_metadata_csum(%struct.TYPE_4__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %124 = call i64 @buffer_verified(%struct.buffer_head* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %116
  %127 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %127, %struct.buffer_head** %6, align 8
  br label %180

128:                                              ; preds = %122
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %128
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @INDEX, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load %struct.inode*, %struct.inode** %7, align 8
  %137 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %13, align 8
  %138 = call i64 @ext4_dx_csum_verify(%struct.inode* %136, %struct.ext4_dir_entry* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %142 = call i32 @set_buffer_verified(%struct.buffer_head* %141)
  br label %154

143:                                              ; preds = %135
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i64, i64* %8, align 8
  %148 = call i32 (%struct.inode*, i8*, i32, i64, i8*, ...) @ext4_error_inode(%struct.inode* %144, i8* %145, i32 %146, i64 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %149 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %150 = call i32 @brelse(%struct.buffer_head* %149)
  %151 = load i32, i32* @EFSBADCRC, align 4
  %152 = sub nsw i32 0, %151
  %153 = call %struct.buffer_head* @ERR_PTR(i32 %152)
  store %struct.buffer_head* %153, %struct.buffer_head** %6, align 8
  br label %180

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %131, %128
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %178, label %158

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %161 = call i64 @ext4_dirblock_csum_verify(%struct.inode* %159, %struct.buffer_head* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %165 = call i32 @set_buffer_verified(%struct.buffer_head* %164)
  br label %177

166:                                              ; preds = %158
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i64, i64* %8, align 8
  %171 = call i32 (%struct.inode*, i8*, i32, i64, i8*, ...) @ext4_error_inode(%struct.inode* %167, i8* %168, i32 %169, i64 %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %172 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %173 = call i32 @brelse(%struct.buffer_head* %172)
  %174 = load i32, i32* @EFSBADCRC, align 4
  %175 = sub nsw i32 0, %174
  %176 = call %struct.buffer_head* @ERR_PTR(i32 %175)
  store %struct.buffer_head* %176, %struct.buffer_head** %6, align 8
  br label %180

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %155
  %179 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %179, %struct.buffer_head** %6, align 8
  br label %180

180:                                              ; preds = %178, %166, %143, %126, %105, %66, %49, %21
  %181 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %181
}

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @__ext4_warning(%struct.TYPE_4__*, i8*, i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_error_inode(%struct.inode*, i8*, i32, i64, i8*, ...) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i64 @is_dx(%struct.inode*) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_has_metadata_csum(%struct.TYPE_4__*) #1

declare dso_local i64 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i64 @ext4_dx_csum_verify(%struct.inode*, %struct.ext4_dir_entry*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local i64 @ext4_dirblock_csum_verify(%struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
