; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i64 }
%struct.tgid_iter = type { i32, i32* }
%struct.pid_namespace = type { i32, i32 }
%struct.inode = type { i32 }

@PID_MAX_LIMIT = common dso_local global i64 0, align 8
@TGID_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@DT_LNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"thread-self\00", align 1
@HIDEPID_INVISIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@proc_pid_instantiate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pid_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.tgid_iter, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.tgid_iter, align 8
  %12 = alloca [11 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.tgid_iter, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call i32 @file_inode(%struct.file* %15)
  %17 = call %struct.pid_namespace* @proc_pid_ns(i32 %16)
  store %struct.pid_namespace* %17, %struct.pid_namespace** %7, align 8
  %18 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %19 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @PID_MAX_LIMIT, align 8
  %23 = load i32, i32* @TGID_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %162

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @TGID_OFFSET, align 4
  %31 = sub nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %36 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.inode* @d_inode(i32 %37)
  store %struct.inode* %38, %struct.inode** %9, align 8
  %39 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DT_LNK, align 4
  %44 = call i32 @dir_emit(%struct.dir_context* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %162

47:                                               ; preds = %34
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  %50 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %51 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %28
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @TGID_OFFSET, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %60 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.inode* @d_inode(i32 %61)
  store %struct.inode* %62, %struct.inode** %10, align 8
  %63 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DT_LNK, align 4
  %68 = call i32 @dir_emit(%struct.dir_context* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %162

71:                                               ; preds = %58
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %8, align 8
  %74 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %75 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %52
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* @TGID_OFFSET, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %85 = bitcast %struct.tgid_iter* %6 to { i32, i32* }*
  %86 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %85, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call { i32, i32* } @next_tgid(%struct.pid_namespace* %84, i32 %87, i32* %89)
  %91 = bitcast %struct.tgid_iter* %11 to { i32, i32* }*
  %92 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %91, i32 0, i32 0
  %93 = extractvalue { i32, i32* } %90, 0
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %91, i32 0, i32 1
  %95 = extractvalue { i32, i32* } %90, 1
  store i32* %95, i32** %94, align 8
  %96 = bitcast %struct.tgid_iter* %6 to i8*
  %97 = bitcast %struct.tgid_iter* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  br label %98

98:                                               ; preds = %137, %76
  %99 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %155

102:                                              ; preds = %98
  %103 = call i32 (...) @cond_resched()
  %104 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %105 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @HIDEPID_INVISIBLE, align 4
  %108 = call i32 @has_pid_permissions(%struct.pid_namespace* %104, i32* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %137

111:                                              ; preds = %102
  %112 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %113 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @snprintf(i8* %112, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TGID_OFFSET, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %122 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.file*, %struct.file** %4, align 8
  %124 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %125 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @proc_pid_instantiate, align 4
  %128 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @proc_fill_cache(%struct.file* %123, %struct.dir_context* %124, i8* %125, i32 %126, i32 %127, i32* %129, i32* null)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %111
  %133 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @put_task_struct(i32* %134)
  store i32 0, i32* %3, align 4
  br label %162

136:                                              ; preds = %111
  br label %137

137:                                              ; preds = %136, %110
  %138 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %6, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %142 = bitcast %struct.tgid_iter* %6 to { i32, i32* }*
  %143 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %142, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call { i32, i32* } @next_tgid(%struct.pid_namespace* %141, i32 %144, i32* %146)
  %148 = bitcast %struct.tgid_iter* %14 to { i32, i32* }*
  %149 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %148, i32 0, i32 0
  %150 = extractvalue { i32, i32* } %147, 0
  store i32 %150, i32* %149, align 8
  %151 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %148, i32 0, i32 1
  %152 = extractvalue { i32, i32* } %147, 1
  store i32* %152, i32** %151, align 8
  %153 = bitcast %struct.tgid_iter* %6 to i8*
  %154 = bitcast %struct.tgid_iter* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 16, i1 false)
  br label %98

155:                                              ; preds = %98
  %156 = load i64, i64* @PID_MAX_LIMIT, align 8
  %157 = load i32, i32* @TGID_OFFSET, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %161 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %155, %132, %70, %46, %27
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.pid_namespace* @proc_pid_ns(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local { i32, i32* } @next_tgid(%struct.pid_namespace*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @has_pid_permissions(%struct.pid_namespace*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @proc_fill_cache(%struct.file*, %struct.dir_context*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @put_task_struct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
