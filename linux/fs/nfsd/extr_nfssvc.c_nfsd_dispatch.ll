; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.svc_procedure* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.svc_procedure = type { i64 (%struct.svc_rqst*)*, {}*, {}*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"nfsd_dispatch: vers %d proc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"nfsd: NFSv%d argument too large\0A\00", align 1
@rpc_garbage_args = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"nfsd: failed to decode arguments!\0A\00", align 1
@nfserr_dropit = common dso_local global i64 0, align 8
@RQ_DROPME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"nfsd: Dropping request; may be revisited later\0A\00", align 1
@RC_NOCACHE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"nfsd: failed to encode result!\0A\00", align 1
@rpc_system_err = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_dispatch(%struct.svc_rqst* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.svc_procedure*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %14)
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 6
  %18 = load %struct.svc_procedure*, %struct.svc_procedure** %17, align 8
  store %struct.svc_procedure* %18, %struct.svc_procedure** %6, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %21 = call i64 @nfs_request_too_big(%struct.svc_rqst* %19, %struct.svc_procedure* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @rpc_garbage_args, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  store i32 1, i32* %3, align 4
  br label %166

30:                                               ; preds = %2
  %31 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %32 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %37 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %36, i32 0, i32 2
  %38 = bitcast {}** %37 to i32 (%struct.svc_rqst*, i64*)**
  %39 = load i32 (%struct.svc_rqst*, i64*)*, i32 (%struct.svc_rqst*, i64*)** %38, align 8
  %40 = icmp ne i32 (%struct.svc_rqst*, i64*)* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %30
  %42 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %43 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %42, i32 0, i32 2
  %44 = bitcast {}** %43 to i32 (%struct.svc_rqst*, i64*)**
  %45 = load i32 (%struct.svc_rqst*, i64*)*, i32 (%struct.svc_rqst*, i64*)** %44, align 8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i64*
  %55 = call i32 %45(%struct.svc_rqst* %46, i64* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %41
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* @rpc_garbage_args, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  store i32 1, i32* %3, align 4
  br label %166

61:                                               ; preds = %41, %30
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %63 = call i32 @nfsd_cache_lookup(%struct.svc_rqst* %62)
  switch i32 %63, label %67 [
    i32 129, label %64
    i32 128, label %65
    i32 130, label %66
  ]

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %166

65:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %166

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %76 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %74, i64 %82
  store i64* %83, i64** %8, align 8
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %85 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  %94 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %95 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %94, i32 0, i32 0
  %96 = load i64 (%struct.svc_rqst*)*, i64 (%struct.svc_rqst*)** %95, align 8
  %97 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %98 = call i64 %96(%struct.svc_rqst* %97)
  store i64 %98, i64* %7, align 8
  %99 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %100 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @map_new_errors(i32 %101, i64 %102)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @nfserr_dropit, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %67
  %108 = load i32, i32* @RQ_DROPME, align 4
  %109 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %110 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %109, i32 0, i32 3
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %67
  %114 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %116 = load i32, i32* @RC_NOCACHE, align 4
  %117 = call i32 @nfsd_cache_update(%struct.svc_rqst* %115, i32 %116, i64* null)
  store i32 0, i32* %3, align 4
  br label %166

118:                                              ; preds = %107
  %119 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %120 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i64, i64* %7, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %8, align 8
  store i64 %124, i64* %125, align 8
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i64, i64* %7, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %132 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %158, label %135

135:                                              ; preds = %130, %127
  %136 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %137 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %136, i32 0, i32 1
  %138 = bitcast {}** %137 to i32 (%struct.svc_rqst*, i64*)**
  %139 = load i32 (%struct.svc_rqst*, i64*)*, i32 (%struct.svc_rqst*, i64*)** %138, align 8
  %140 = icmp ne i32 (%struct.svc_rqst*, i64*)* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %135
  %142 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %143 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %142, i32 0, i32 1
  %144 = bitcast {}** %143 to i32 (%struct.svc_rqst*, i64*)**
  %145 = load i32 (%struct.svc_rqst*, i64*)*, i32 (%struct.svc_rqst*, i64*)** %144, align 8
  %146 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %147 = load i64*, i64** %8, align 8
  %148 = call i32 %145(%struct.svc_rqst* %146, i64* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %141
  %151 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %152 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %153 = load i32, i32* @RC_NOCACHE, align 4
  %154 = call i32 @nfsd_cache_update(%struct.svc_rqst* %152, i32 %153, i64* null)
  %155 = load i64, i64* @rpc_system_err, align 8
  %156 = load i64*, i64** %5, align 8
  store i64 %155, i64* %156, align 8
  store i32 1, i32* %3, align 4
  br label %166

157:                                              ; preds = %141, %135
  br label %158

158:                                              ; preds = %157, %130
  %159 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %160 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %161 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i64*, i64** %5, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 1
  %165 = call i32 @nfsd_cache_update(%struct.svc_rqst* %159, i32 %162, i64* %164)
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %158, %150, %113, %65, %64, %57, %23
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @nfs_request_too_big(%struct.svc_rqst*, %struct.svc_procedure*) #1

declare dso_local i32 @nfsd_cache_lookup(%struct.svc_rqst*) #1

declare dso_local i64 @map_new_errors(i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfsd_cache_update(%struct.svc_rqst*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
