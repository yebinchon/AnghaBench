; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bpf_prog = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bpf_prog_offload* }
%struct.bpf_prog_offload = type { i64, i32, i32, %struct.bpf_prog* }
%union.bpf_attr = type { i64 }
%struct.bpf_offload_netdev = type { i32, i32 }

@BPF_PROG_TYPE_SCHED_CLS = common dso_local global i64 0, align 8
@BPF_PROG_TYPE_XDP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_offload_init(%struct.bpf_prog* %0, %union.bpf_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %union.bpf_attr*, align 8
  %6 = alloca %struct.bpf_offload_netdev*, align 8
  %7 = alloca %struct.bpf_prog_offload*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store %union.bpf_attr* %1, %union.bpf_attr** %5, align 8
  %9 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %10 = bitcast %union.bpf_attr* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BPF_PROG_TYPE_SCHED_CLS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %16 = bitcast %union.bpf_attr* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BPF_PROG_TYPE_XDP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %109

23:                                               ; preds = %14, %2
  %24 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %25 = bitcast %union.bpf_attr* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %109

31:                                               ; preds = %23
  %32 = load i32, i32* @GFP_USER, align 4
  %33 = call %struct.bpf_prog_offload* @kzalloc(i32 24, i32 %32)
  store %struct.bpf_prog_offload* %33, %struct.bpf_prog_offload** %7, align 8
  %34 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %35 = icmp ne %struct.bpf_prog_offload* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %109

39:                                               ; preds = %31
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %41 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %42 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %41, i32 0, i32 3
  store %struct.bpf_prog* %40, %struct.bpf_prog** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %49 = bitcast %union.bpf_attr* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dev_get_by_index(i32 %47, i32 %50)
  %52 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %53 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %55 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bpf_dev_offload_check(i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  br label %95

61:                                               ; preds = %39
  %62 = call i32 @down_write(i32* @bpf_devs_lock)
  %63 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %64 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.bpf_offload_netdev* @bpf_offload_find_netdev(i64 %65)
  store %struct.bpf_offload_netdev* %66, %struct.bpf_offload_netdev** %6, align 8
  %67 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %68 = icmp ne %struct.bpf_offload_netdev* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %93

72:                                               ; preds = %61
  %73 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %74 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %77 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %79 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store %struct.bpf_prog_offload* %78, %struct.bpf_prog_offload** %82, align 8
  %83 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %84 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %83, i32 0, i32 1
  %85 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %86 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* %84, i32* %86)
  %88 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %89 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @dev_put(i64 %90)
  %92 = call i32 @up_write(i32* @bpf_devs_lock)
  store i32 0, i32* %3, align 4
  br label %109

93:                                               ; preds = %69
  %94 = call i32 @up_write(i32* @bpf_devs_lock)
  br label %95

95:                                               ; preds = %93, %60
  %96 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %97 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %102 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @dev_put(i64 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %107 = call i32 @kfree(%struct.bpf_prog_offload* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %72, %36, %28, %20
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.bpf_prog_offload* @kzalloc(i32, i32) #1

declare dso_local i64 @dev_get_by_index(i32, i32) #1

declare dso_local i32 @bpf_dev_offload_check(i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.bpf_offload_netdev* @bpf_offload_find_netdev(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.bpf_prog_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
