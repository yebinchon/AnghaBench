; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_wstat.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_wstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_wstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c">>> TWSTAT fid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [173 x i8] c"     sz=%x type=%x dev=%x qid=%x.%llx.%x\0A     mode=%8.8x atime=%8.8x mtime=%8.8x length=%llx\0A     name=%s uid=%s gid=%s muid=%s extension=(%s)\0A     uid=%d gid=%d n_muid=%d\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@P9_TWSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"dwS\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"<<< RWSTAT fid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_wstat(%struct.p9_fid* %0, %struct.p9_wstat* %1) #0 {
  %3 = alloca %struct.p9_fid*, align 8
  %4 = alloca %struct.p9_wstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_req_t*, align 8
  %7 = alloca %struct.p9_client*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %3, align 8
  store %struct.p9_wstat* %1, %struct.p9_wstat** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %9 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %8, i32 0, i32 1
  %10 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  store %struct.p9_client* %10, %struct.p9_client** %7, align 8
  %11 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %12 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %13 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @p9_client_statsize(%struct.p9_wstat* %11, i32 %14)
  %16 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %17 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @P9_DEBUG_9P, align 4
  %19 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @P9_DEBUG_9P, align 4
  %24 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %25 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %28 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %31 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %30, i32 0, i32 14
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %34 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %38 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %42 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %46 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %49 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %52 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %55 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %58 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %61 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %64 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %67 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %70 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %73 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @from_kuid(i32* @init_user_ns, i32 %74)
  %76 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %77 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @from_kgid(i32* @init_user_ns, i32 %78)
  %80 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %81 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @from_kuid(i32* @init_user_ns, i32 %82)
  %84 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %23, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %36, i64 %40, i32 %44, i32 %47, i32 %50, i32 %53, i64 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %75, i32 %79, i32 %83)
  %85 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %86 = load i32, i32* @P9_TWSTAT, align 4
  %87 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %88 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %91 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 2
  %94 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %95 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %93, %struct.p9_wstat* %94)
  store %struct.p9_req_t* %95, %struct.p9_req_t** %6, align 8
  %96 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %97 = call i64 @IS_ERR(%struct.p9_req_t* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %2
  %100 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %101 = call i32 @PTR_ERR(%struct.p9_req_t* %100)
  store i32 %101, i32* %5, align 4
  br label %111

102:                                              ; preds = %2
  %103 = load i32, i32* @P9_DEBUG_9P, align 4
  %104 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %105 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %109 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %110 = call i32 @p9_tag_remove(%struct.p9_client* %108, %struct.p9_req_t* %109)
  br label %111

111:                                              ; preds = %102, %99
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @p9_client_statsize(%struct.p9_wstat*, i32) #1

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, %struct.p9_wstat*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
