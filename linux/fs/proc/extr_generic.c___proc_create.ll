; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c___proc_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c___proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qstr = type { i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"name len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"name '.'\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"name '..'\0A\00", align 1
@proc_root = common dso_local global %struct.proc_dir_entry zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"create '/proc/%s' by hand\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"attempt to add to permanently empty directory\00", align 1
@proc_dir_entry_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIZEOF_PDE_INLINE_NAME = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@proc_misc_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_dir_entry* (%struct.proc_dir_entry**, i8*, i32, i32)* @__proc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.proc_dir_entry**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.proc_dir_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qstr, align 8
  store %struct.proc_dir_entry** %0, %struct.proc_dir_entry*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  %15 = call i64 @xlate_proc_name(i8* %13, %struct.proc_dir_entry** %14, i8** %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %161

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 256
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %18
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33)
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  br label %163

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  br label %163

47:                                               ; preds = %39, %35
  %48 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  br label %163

65:                                               ; preds = %57, %51, %47
  %66 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  %67 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %66, align 8
  %68 = icmp eq %struct.proc_dir_entry* %67, @proc_root
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = call i32 @name_to_int(%struct.qstr* %12)
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  br label %163

76:                                               ; preds = %69, %65
  %77 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  %78 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %77, align 8
  %79 = call i64 @is_empty_pde(%struct.proc_dir_entry* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  br label %163

83:                                               ; preds = %76
  %84 = load i32, i32* @proc_dir_entry_cache, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.proc_dir_entry* @kmem_cache_zalloc(i32 %84, i32 %85)
  store %struct.proc_dir_entry* %86, %struct.proc_dir_entry** %10, align 8
  %87 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %88 = icmp ne %struct.proc_dir_entry* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %161

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @SIZEOF_PDE_INLINE_NAME, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %98 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %101 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 8
  br label %118

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i32 @kmalloc(i32 %105, i32 %106)
  %108 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %109 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %108, i32 0, i32 10
  store i32 %107, i32* %109, align 8
  %110 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %111 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %102
  %115 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %116 = call i32 @pde_free(%struct.proc_dir_entry* %115)
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  br label %163

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %96
  %119 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %120 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = call i32 @memcpy(i32 %121, i8* %122, i32 %125)
  %127 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %130 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %133 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %136 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @RB_ROOT, align 4
  %138 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %139 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 4
  %140 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %141 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %140, i32 0, i32 6
  %142 = call i32 @refcount_set(i32* %141, i32 1)
  %143 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %144 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %143, i32 0, i32 5
  %145 = call i32 @spin_lock_init(i32* %144)
  %146 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %147 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %146, i32 0, i32 4
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %150 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  %151 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %150, align 8
  %152 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  %155 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %154, align 8
  %156 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @proc_set_user(%struct.proc_dir_entry* %149, i32 %153, i32 %157)
  %159 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %160 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %159, i32 0, i32 1
  store i32* @proc_misc_dentry_ops, i32** %160, align 8
  br label %161

161:                                              ; preds = %118, %89, %17
  %162 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  store %struct.proc_dir_entry* %162, %struct.proc_dir_entry** %5, align 8
  br label %163

163:                                              ; preds = %161, %114, %81, %72, %63, %45, %31
  %164 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  ret %struct.proc_dir_entry* %164
}

declare dso_local i64 @xlate_proc_name(i8*, %struct.proc_dir_entry**, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @name_to_int(%struct.qstr*) #1

declare dso_local i64 @is_empty_pde(%struct.proc_dir_entry*) #1

declare dso_local %struct.proc_dir_entry* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @pde_free(%struct.proc_dir_entry*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @proc_set_user(%struct.proc_dir_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
