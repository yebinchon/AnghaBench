; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_ld_abs_get_processor_id.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_ld_abs_get_processor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sock_filter* }
%struct.sock_filter = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@SKF_AD_OFF = common dso_local global i32 0, align 4
@SKF_AD_CPU = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_ld_abs_get_processor_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_ld_abs_get_processor_id(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_filter, align 4
  %8 = alloca %struct.sock_filter, align 4
  %9 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %10 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sock_filter* @kmalloc_array(i32 %11, i32 4, i32 %12)
  store %struct.sock_filter* %13, %struct.sock_filter** %5, align 8
  %14 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %15 = icmp ne %struct.sock_filter* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %56, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %22, 1
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %26, i64 %28
  %30 = load i32, i32* @BPF_LD, align 4
  %31 = load i32, i32* @BPF_B, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BPF_ABS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @__BPF_STMT(i32 %34, i32 0)
  %36 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.sock_filter* %29 to i8*
  %38 = bitcast %struct.sock_filter* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %39, i64 %42
  %44 = load i32, i32* @BPF_LD, align 4
  %45 = load i32, i32* @BPF_W, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @BPF_ABS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SKF_AD_OFF, align 4
  %50 = load i32, i32* @SKF_AD_CPU, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @__BPF_STMT(i32 %48, i32 %51)
  %53 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.sock_filter* %43 to i8*
  %55 = bitcast %struct.sock_filter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %56

56:                                               ; preds = %25
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %6, align 4
  br label %20

59:                                               ; preds = %20
  %60 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %60, i64 %63
  %65 = load i32, i32* @BPF_RET, align 4
  %66 = load i32, i32* @BPF_K, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @__BPF_STMT(i32 %67, i32 3054)
  %69 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = bitcast %struct.sock_filter* %64 to i8*
  %71 = bitcast %struct.sock_filter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %73 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %74 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store %struct.sock_filter* %72, %struct.sock_filter** %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %79 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %59, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.sock_filter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__BPF_STMT(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
