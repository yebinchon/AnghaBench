; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns2.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sock_filter* }
%struct.sock_filter = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns2(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %8 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sock_filter* @kmalloc_array(i32 %9, i32 4, i32 %10)
  store %struct.sock_filter* %11, %struct.sock_filter** %5, align 8
  %12 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %13 = icmp ne %struct.sock_filter* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %23, i64 %25
  %27 = load i32, i32* @BPF_RET, align 4
  %28 = load i32, i32* @BPF_K, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @__BPF_STMT(i32 %29, i32 -16843010)
  %31 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = bitcast %struct.sock_filter* %26 to i8*
  %33 = bitcast %struct.sock_filter* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %39 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %40 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store %struct.sock_filter* %38, %struct.sock_filter** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %45 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %37, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
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
