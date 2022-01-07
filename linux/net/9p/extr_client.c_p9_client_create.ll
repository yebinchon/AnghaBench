; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.TYPE_4__*, i32*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 (%struct.p9_client*, i8*, i8*)*, i32, i32 (%struct.p9_client*)* }
%struct.TYPE_5__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No transport defined or default transport\0A\00", align 1
@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"clnt %p trans %p msize %d protocol %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Please specify a msize of at least 4k\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"9p-fcall-cache\00", align 1
@P9_HDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_client* @p9_client_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_client*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.p9_client* @kmalloc(i32 56, i32 %9)
  store %struct.p9_client* %10, %struct.p9_client** %7, align 8
  %11 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %12 = icmp ne %struct.p9_client* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.p9_client* @ERR_PTR(i32 %15)
  store %struct.p9_client* %16, %struct.p9_client** %3, align 8
  br label %163

17:                                               ; preds = %2
  %18 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %19 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %18, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %21 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %20, i32 0, i32 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %23 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = call %struct.TYPE_5__* (...) @utsname()
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %28 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = call i32 @memcpy(i32 %29, i8* %30, i64 %33)
  %35 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %36 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %35, i32 0, i32 6
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %39 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %38, i32 0, i32 5
  %40 = call i32 @idr_init(i32* %39)
  %41 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %42 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %41, i32 0, i32 4
  %43 = call i32 @idr_init(i32* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %46 = call i32 @parse_opts(i8* %44, %struct.p9_client* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %17
  br label %158

50:                                               ; preds = %17
  %51 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %52 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = call %struct.TYPE_4__* (...) @v9fs_get_default_trans()
  %57 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %58 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %57, i32 0, i32 1
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %58, align 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %61 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp eq %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @EPROTONOSUPPORT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %68 = call i32 (i32, i8*, ...) @p9_debug(i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %158

69:                                               ; preds = %59
  %70 = load i32, i32* @P9_DEBUG_MUX, align 4
  %71 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %72 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %73 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %76 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %79 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @p9_debug(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.p9_client* %71, %struct.TYPE_4__* %74, i32 %77, i32 %80)
  %82 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %83 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.p9_client*, i8*, i8*)*, i32 (%struct.p9_client*, i8*, i8*)** %85, align 8
  %87 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 %86(%struct.p9_client* %87, i8* %88, i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %69
  br label %153

94:                                               ; preds = %69
  %95 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %96 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %99 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %97, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %106 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %111 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %104, %94
  %113 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %114 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %115, 4096
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %119 = call i32 (i32, i8*, ...) @p9_debug(i32 %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %145

122:                                              ; preds = %112
  %123 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %124 = call i32 @p9_client_version(%struct.p9_client* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %145

128:                                              ; preds = %122
  %129 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %130 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* @P9_HDRSZ, align 8
  %133 = add nsw i64 %132, 4
  %134 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %135 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @P9_HDRSZ, align 8
  %139 = add nsw i64 %138, 4
  %140 = sub nsw i64 %137, %139
  %141 = call i32* @kmem_cache_create_usercopy(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 0, i32 0, i64 %133, i64 %140, i32* null)
  %142 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %143 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %142, i32 0, i32 2
  store i32* %141, i32** %143, align 8
  %144 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  store %struct.p9_client* %144, %struct.p9_client** %3, align 8
  br label %163

145:                                              ; preds = %127, %117
  %146 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %147 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32 (%struct.p9_client*)*, i32 (%struct.p9_client*)** %149, align 8
  %151 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %152 = call i32 %150(%struct.p9_client* %151)
  br label %153

153:                                              ; preds = %145, %93
  %154 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %155 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = call i32 @v9fs_put_trans(%struct.TYPE_4__* %156)
  br label %158

158:                                              ; preds = %153, %64, %49
  %159 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %160 = call i32 @kfree(%struct.p9_client* %159)
  %161 = load i32, i32* %6, align 4
  %162 = call %struct.p9_client* @ERR_PTR(i32 %161)
  store %struct.p9_client* %162, %struct.p9_client** %3, align 8
  br label %163

163:                                              ; preds = %158, %128, %13
  %164 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  ret %struct.p9_client* %164
}

declare dso_local %struct.p9_client* @kmalloc(i32, i32) #1

declare dso_local %struct.p9_client* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_5__* @utsname(...) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @parse_opts(i8*, %struct.p9_client*) #1

declare dso_local %struct.TYPE_4__* @v9fs_get_default_trans(...) #1

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local i32 @p9_client_version(%struct.p9_client*) #1

declare dso_local i32* @kmem_cache_create_usercopy(i8*, i32, i32, i32, i64, i64, i32*) #1

declare dso_local i32 @v9fs_put_trans(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.p9_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
