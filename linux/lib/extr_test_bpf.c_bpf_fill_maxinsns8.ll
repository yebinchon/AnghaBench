; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns8.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns8.c"
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
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JGT = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns8(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock_filter, align 4
  %9 = alloca %struct.sock_filter, align 4
  %10 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %11 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 %12, 3
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sock_filter* @kmalloc_array(i32 %14, i32 4, i32 %15)
  store %struct.sock_filter* %16, %struct.sock_filter** %5, align 8
  %17 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %18 = icmp ne %struct.sock_filter* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  %23 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %24 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %23, i64 0
  %25 = load i32, i32* @BPF_LD, align 4
  %26 = load i32, i32* @BPF_IMM, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @__BPF_STMT(i32 %27, i32 -1)
  %29 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.sock_filter* %24 to i8*
  %31 = bitcast %struct.sock_filter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %51, %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub i32 %34, 1
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %38, i64 %40
  %42 = load i32, i32* @BPF_JMP, align 4
  %43 = load i32, i32* @BPF_JGT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = call i32 @__BPF_JUMP(i32 %44, i32 -1, i32 %45, i32 0)
  %48 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.sock_filter* %41 to i8*
  %50 = bitcast %struct.sock_filter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sub i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %55, i64 %58
  %60 = load i32, i32* @BPF_RET, align 4
  %61 = load i32, i32* @BPF_A, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @__BPF_STMT(i32 %62, i32 0)
  %64 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %10, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast %struct.sock_filter* %59 to i8*
  %66 = bitcast %struct.sock_filter* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %68 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %69 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store %struct.sock_filter* %67, %struct.sock_filter** %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %74 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %54, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.sock_filter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__BPF_STMT(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__BPF_JUMP(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
