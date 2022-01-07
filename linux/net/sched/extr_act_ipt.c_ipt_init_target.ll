; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_ipt_init_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_ipt_init_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xt_entry_target = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xt_tgchk_param = type { i8*, i32, i32, i32, %struct.xt_target*, %struct.ipt_entry*, %struct.net* }
%struct.ipt_entry = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.xt_entry_target*, i8*, i32)* @ipt_init_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_init_target(%struct.net* %0, %struct.xt_entry_target* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xt_entry_target*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xt_tgchk_param, align 8
  %11 = alloca %struct.xt_target*, align 8
  %12 = alloca %struct.ipt_entry, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.xt_entry_target* %1, %struct.xt_entry_target** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.ipt_entry* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %17 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %22 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.xt_target* @xt_request_find_target(i32 %15, i32 %20, i32 %25)
  store %struct.xt_target* %26, %struct.xt_target** %11, align 8
  %27 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %28 = call i64 @IS_ERR(%struct.xt_target* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %32 = call i32 @PTR_ERR(%struct.xt_target* %31)
  store i32 %32, i32* %5, align 4
  br label %74

33:                                               ; preds = %4
  %34 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %35 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %36 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store %struct.xt_target* %34, %struct.xt_target** %38, align 8
  %39 = call i32 @memset(%struct.xt_tgchk_param* %10, i32 0, i32 48)
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 6
  store %struct.net* %40, %struct.net** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 5
  store %struct.ipt_entry* %12, %struct.ipt_entry** %44, align 8
  %45 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %46 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 4
  store %struct.xt_target* %45, %struct.xt_target** %46, align 8
  %47 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %48 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @NFPROTO_IPV4, align 4
  %54 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %56 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, 32
  %60 = call i32 @xt_check_target(%struct.xt_tgchk_param* %10, i64 %59, i32 0, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %33
  %64 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %65 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.xt_target*, %struct.xt_target** %67, align 8
  %69 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @module_put(i32 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %63, %30
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.xt_target* @xt_request_find_target(i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.xt_target*) #2

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #2

declare dso_local i32 @memset(%struct.xt_tgchk_param*, i32, i32) #2

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #2

declare dso_local i32 @module_put(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
