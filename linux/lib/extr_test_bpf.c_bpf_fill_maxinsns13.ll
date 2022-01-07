; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns13.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sock_filter* }
%struct.sock_filter = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_LDX = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_MSH = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_XOR = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns13(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_filter, align 4
  %8 = alloca %struct.sock_filter, align 4
  %9 = alloca %struct.sock_filter, align 4
  %10 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %11 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %6, align 4
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
  br label %92

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 3
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %27, i64 %29
  %31 = load i32, i32* @BPF_LDX, align 4
  %32 = load i32, i32* @BPF_B, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BPF_MSH, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @__BPF_STMT(i32 %35, i32 0)
  %37 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.sock_filter* %30 to i8*
  %39 = bitcast %struct.sock_filter* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sub i32 %45, 3
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %44, i64 %47
  %49 = load i32, i32* @BPF_LD, align 4
  %50 = load i32, i32* @BPF_IMM, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @__BPF_STMT(i32 %51, i32 -1414812757)
  %53 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.sock_filter* %48 to i8*
  %55 = bitcast %struct.sock_filter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub i32 %57, 2
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %56, i64 %59
  %61 = load i32, i32* @BPF_ALU, align 4
  %62 = load i32, i32* @BPF_XOR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BPF_X, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @__BPF_STMT(i32 %65, i32 0)
  %67 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.sock_filter* %60 to i8*
  %69 = bitcast %struct.sock_filter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sub i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %70, i64 %73
  %75 = load i32, i32* @BPF_RET, align 4
  %76 = load i32, i32* @BPF_A, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @__BPF_STMT(i32 %77, i32 0)
  %79 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %10, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = bitcast %struct.sock_filter* %74 to i8*
  %81 = bitcast %struct.sock_filter* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %83 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %84 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store %struct.sock_filter* %82, %struct.sock_filter** %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %89 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %43, %17
  %93 = load i32, i32* %2, align 4
  ret i32 %93
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
