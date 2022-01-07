; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns6.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns6.c"
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
@BPF_W = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@SKF_AD_OFF = common dso_local global i64 0, align 8
@SKF_AD_VLAN_TAG_PRESENT = common dso_local global i64 0, align 8
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns6(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_filter, align 4
  %8 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %9 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sock_filter* @kmalloc_array(i32 %10, i32 4, i32 %11)
  store %struct.sock_filter* %12, %struct.sock_filter** %5, align 8
  %13 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %14 = icmp ne %struct.sock_filter* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub i32 %21, 1
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %25, i64 %27
  %29 = load i32, i32* @BPF_LD, align 4
  %30 = load i32, i32* @BPF_W, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BPF_ABS, align 4
  %33 = or i32 %31, %32
  %34 = load i64, i64* @SKF_AD_OFF, align 8
  %35 = load i64, i64* @SKF_AD_VLAN_TAG_PRESENT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @__BPF_STMT(i32 %33, i64 %36)
  %38 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.sock_filter* %28 to i8*
  %40 = bitcast %struct.sock_filter* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %45, i64 %48
  %50 = load i32, i32* @BPF_RET, align 4
  %51 = load i32, i32* @BPF_A, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @__BPF_STMT(i32 %52, i64 0)
  %54 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %8, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.sock_filter* %49 to i8*
  %56 = bitcast %struct.sock_filter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %58 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %59 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store %struct.sock_filter* %57, %struct.sock_filter** %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %64 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %44, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.sock_filter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__BPF_STMT(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
