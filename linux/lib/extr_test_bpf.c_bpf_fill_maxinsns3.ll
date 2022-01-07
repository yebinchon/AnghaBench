; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns3.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sock_filter* }
%struct.sock_filter = type { i32 }
%struct.rnd_state = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns3(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca %struct.rnd_state, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock_filter, align 4
  %10 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %11 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sock_filter* @kmalloc_array(i32 %12, i32 4, i32 %13)
  store %struct.sock_filter* %14, %struct.sock_filter** %5, align 8
  %15 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %16 = icmp ne %struct.sock_filter* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = call i32 @prandom_seed_state(%struct.rnd_state* %6, i64 3141592653589793238)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %43, %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, 1
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = call i32 @prandom_u32_state(%struct.rnd_state* %6)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %29, i64 %31
  %33 = load i32, i32* @BPF_ALU, align 4
  %34 = load i32, i32* @BPF_ADD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BPF_K, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @__BPF_STMT(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.sock_filter* %32 to i8*
  %42 = bitcast %struct.sock_filter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sub i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %47, i64 %50
  %52 = load i32, i32* @BPF_RET, align 4
  %53 = load i32, i32* @BPF_A, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @__BPF_STMT(i32 %54, i32 0)
  %56 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.sock_filter* %51 to i8*
  %58 = bitcast %struct.sock_filter* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %60 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %61 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store %struct.sock_filter* %59, %struct.sock_filter** %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %66 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %46, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sock_filter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @prandom_seed_state(%struct.rnd_state*, i64) #1

declare dso_local i32 @prandom_u32_state(%struct.rnd_state*) #1

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
