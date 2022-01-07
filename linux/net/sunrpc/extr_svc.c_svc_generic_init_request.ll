; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_generic_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_generic_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i64, i32, i32, %struct.svc_procedure*, %struct.TYPE_3__* }
%struct.svc_procedure = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.svc_program = type { i64, i32, i32, %struct.svc_version** }
%struct.svc_version = type { i64, i32, i32*, %struct.svc_procedure*, i64 }
%struct.svc_process_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@XPT_CONG_CTRL = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i32 0, align 4
@rpc_prog_mismatch = common dso_local global i32 0, align 4
@rpc_proc_unavail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_generic_init_request(%struct.svc_rqst* %0, %struct.svc_program* %1, %struct.svc_process_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_program*, align 8
  %7 = alloca %struct.svc_process_info*, align 8
  %8 = alloca %struct.svc_version*, align 8
  %9 = alloca %struct.svc_procedure*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_program* %1, %struct.svc_program** %6, align 8
  store %struct.svc_process_info* %2, %struct.svc_process_info** %7, align 8
  store %struct.svc_version* null, %struct.svc_version** %8, align 8
  store %struct.svc_procedure* null, %struct.svc_procedure** %9, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %14 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %101

18:                                               ; preds = %3
  %19 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %20 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %19, i32 0, i32 3
  %21 = load %struct.svc_version**, %struct.svc_version*** %20, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.svc_version*, %struct.svc_version** %21, i64 %24
  %26 = load %struct.svc_version*, %struct.svc_version** %25, align 8
  store %struct.svc_version* %26, %struct.svc_version** %8, align 8
  %27 = load %struct.svc_version*, %struct.svc_version** %8, align 8
  %28 = icmp ne %struct.svc_version* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %101

30:                                               ; preds = %18
  %31 = load %struct.svc_version*, %struct.svc_version** %8, align 8
  %32 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* @XPT_CONG_CTRL, align 4
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 5
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @test_bit(i32 %41, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %101

49:                                               ; preds = %40, %35, %30
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %51 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.svc_version*, %struct.svc_version** %8, align 8
  %54 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %115

58:                                               ; preds = %49
  %59 = load %struct.svc_version*, %struct.svc_version** %8, align 8
  %60 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %59, i32 0, i32 3
  %61 = load %struct.svc_procedure*, %struct.svc_procedure** %60, align 8
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %63 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %61, i64 %64
  store %struct.svc_procedure* %65, %struct.svc_procedure** %9, align 8
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %67 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %66, i32 0, i32 4
  store %struct.svc_procedure* %65, %struct.svc_procedure** %67, align 8
  %68 = load %struct.svc_procedure*, %struct.svc_procedure** %9, align 8
  %69 = icmp ne %struct.svc_procedure* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %115

71:                                               ; preds = %58
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.svc_procedure*, %struct.svc_procedure** %9, align 8
  %76 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memset(i32 %74, i32 0, i32 %77)
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %80 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.svc_procedure*, %struct.svc_procedure** %9, align 8
  %83 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memset(i32 %81, i32 0, i32 %84)
  %86 = load %struct.svc_version*, %struct.svc_version** %8, align 8
  %87 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %90 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.svc_version*, %struct.svc_version** %8, align 8
  %96 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %99 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @rpc_success, align 4
  store i32 %100, i32* %4, align 4
  br label %117

101:                                              ; preds = %48, %29, %17
  %102 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %103 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %106 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %109 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %112 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @rpc_prog_mismatch, align 4
  store i32 %114, i32* %4, align 4
  br label %117

115:                                              ; preds = %70, %57
  %116 = load i32, i32* @rpc_proc_unavail, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %101, %71
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
