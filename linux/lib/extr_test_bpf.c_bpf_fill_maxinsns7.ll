; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns7.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns7.c"
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
@SKF_AD_CPU = common dso_local global i64 0, align 8
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_SUB = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns7(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_filter, align 4
  %8 = alloca %struct.sock_filter, align 4
  %9 = alloca %struct.sock_filter, align 4
  %10 = alloca %struct.sock_filter, align 4
  %11 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %12 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sock_filter* @kmalloc_array(i32 %13, i32 4, i32 %14)
  store %struct.sock_filter* %15, %struct.sock_filter** %5, align 8
  %16 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %17 = icmp ne %struct.sock_filter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %113

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, 4
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %28, i64 %30
  %32 = load i32, i32* @BPF_LD, align 4
  %33 = load i32, i32* @BPF_W, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BPF_ABS, align 4
  %36 = or i32 %34, %35
  %37 = load i64, i64* @SKF_AD_OFF, align 8
  %38 = load i64, i64* @SKF_AD_CPU, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @__BPF_STMT(i32 %36, i64 %39)
  %41 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.sock_filter* %31 to i8*
  %43 = bitcast %struct.sock_filter* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %49, 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %48, i64 %51
  %53 = load i32, i32* @BPF_MISC, align 4
  %54 = load i32, i32* @BPF_TAX, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @__BPF_STMT(i32 %55, i64 0)
  %57 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = bitcast %struct.sock_filter* %52 to i8*
  %59 = bitcast %struct.sock_filter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %60, i64 %63
  %65 = load i32, i32* @BPF_LD, align 4
  %66 = load i32, i32* @BPF_W, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BPF_ABS, align 4
  %69 = or i32 %67, %68
  %70 = load i64, i64* @SKF_AD_OFF, align 8
  %71 = load i64, i64* @SKF_AD_CPU, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @__BPF_STMT(i32 %69, i64 %72)
  %74 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = bitcast %struct.sock_filter* %64 to i8*
  %76 = bitcast %struct.sock_filter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  %77 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sub i32 %78, 2
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %77, i64 %80
  %82 = load i32, i32* @BPF_ALU, align 4
  %83 = load i32, i32* @BPF_SUB, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @BPF_X, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @__BPF_STMT(i32 %86, i64 0)
  %88 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %10, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = bitcast %struct.sock_filter* %81 to i8*
  %90 = bitcast %struct.sock_filter* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  %91 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sub i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %91, i64 %94
  %96 = load i32, i32* @BPF_RET, align 4
  %97 = load i32, i32* @BPF_A, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @__BPF_STMT(i32 %98, i64 0)
  %100 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %11, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = bitcast %struct.sock_filter* %95 to i8*
  %102 = bitcast %struct.sock_filter* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %104 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %105 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store %struct.sock_filter* %103, %struct.sock_filter** %107, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %110 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %47, %18
  %114 = load i32, i32* %2, align 4
  ret i32 %114
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
