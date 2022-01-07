; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_bufmap = type { i32, i32, i32 }
%struct.ORANGEFS_dev_map_desc = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GOSSIP_BUFMAP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"orangefs_bufmap_initialize: called (ptr (%p) sz (%d) cnt(%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"orangefs error: memory alignment (front). %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"orangefs error: memory alignment (back).(%p + %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"orangefs error: user provided an oddly sized buffer: (%d, %d, %d)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"orangefs error: bufmap size not page size divisible (%d).\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@orangefs_bufmap_lock = common dso_local global i32 0, align 4
@__orangefs_bufmap = common dso_local global %struct.orangefs_bufmap* null, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"orangefs: error: bufmap already initialized.\0A\00", align 1
@rw_map = common dso_local global i32 0, align 4
@readdir_map = common dso_local global i32 0, align 4
@ORANGEFS_READDIR_DEFAULT_DESC_COUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"orangefs_bufmap_initialize: exiting normally\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_bufmap_initialize(%struct.ORANGEFS_dev_map_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ORANGEFS_dev_map_desc*, align 8
  %4 = alloca %struct.orangefs_bufmap*, align 8
  %5 = alloca i32, align 4
  store %struct.ORANGEFS_dev_map_desc* %0, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GOSSIP_BUFMAP_DEBUG, align 4
  %9 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %10 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %13 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %16 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @gossip_debug(i32 %8, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %14, i32 %17)
  %19 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %20 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %25 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %30 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23, %1
  br label %156

34:                                               ; preds = %28
  %35 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %36 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @PAGE_ALIGN(i64 %37)
  %39 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %40 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %45 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @gossip_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %156

48:                                               ; preds = %34
  %49 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %50 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %53 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = call i64 @PAGE_ALIGN(i64 %55)
  %57 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %58 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %61 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  %64 = icmp ne i64 %56, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %67 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %70 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @gossip_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %71)
  br label %156

73:                                               ; preds = %48
  %74 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %75 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %78 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %81 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %76, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %73
  %87 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %88 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %91 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %94 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @gossip_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %89, i32 %92, i32 %95)
  br label %156

97:                                               ; preds = %73
  %98 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %99 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = srem i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %106 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) @gossip_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %156

109:                                              ; preds = %97
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %113 = call %struct.orangefs_bufmap* @orangefs_bufmap_alloc(%struct.ORANGEFS_dev_map_desc* %112)
  store %struct.orangefs_bufmap* %113, %struct.orangefs_bufmap** %4, align 8
  %114 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %115 = icmp ne %struct.orangefs_bufmap* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  br label %156

117:                                              ; preds = %109
  %118 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %119 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %120 = call i32 @orangefs_bufmap_map(%struct.orangefs_bufmap* %118, %struct.ORANGEFS_dev_map_desc* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %153

124:                                              ; preds = %117
  %125 = call i32 @spin_lock(i32* @orangefs_bufmap_lock)
  %126 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** @__orangefs_bufmap, align 8
  %127 = icmp ne %struct.orangefs_bufmap* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = call i32 @spin_unlock(i32* @orangefs_bufmap_lock)
  %130 = call i32 (i8*, ...) @gossip_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %150

133:                                              ; preds = %124
  %134 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  store %struct.orangefs_bufmap* %134, %struct.orangefs_bufmap** @__orangefs_bufmap, align 8
  %135 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %136 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %139 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @install(i32* @rw_map, i32 %137, i32 %140)
  %142 = load i32, i32* @ORANGEFS_READDIR_DEFAULT_DESC_COUNT, align 4
  %143 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %144 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @install(i32* @readdir_map, i32 %142, i32 %145)
  %147 = call i32 @spin_unlock(i32* @orangefs_bufmap_lock)
  %148 = load i32, i32* @GOSSIP_BUFMAP_DEBUG, align 4
  %149 = call i32 (i32, i8*, ...) @gossip_debug(i32 %148, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %158

150:                                              ; preds = %128
  %151 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %152 = call i32 @orangefs_bufmap_unmap(%struct.orangefs_bufmap* %151)
  br label %153

153:                                              ; preds = %150, %123
  %154 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %155 = call i32 @orangefs_bufmap_free(%struct.orangefs_bufmap* %154)
  br label %156

156:                                              ; preds = %153, %116, %104, %86, %65, %43, %33
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %133
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @gossip_debug(i32, i8*, ...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @gossip_err(i8*, ...) #1

declare dso_local %struct.orangefs_bufmap* @orangefs_bufmap_alloc(%struct.ORANGEFS_dev_map_desc*) #1

declare dso_local i32 @orangefs_bufmap_map(%struct.orangefs_bufmap*, %struct.ORANGEFS_dev_map_desc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @install(i32*, i32, i32) #1

declare dso_local i32 @orangefs_bufmap_unmap(%struct.orangefs_bufmap*) #1

declare dso_local i32 @orangefs_bufmap_free(%struct.orangefs_bufmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
