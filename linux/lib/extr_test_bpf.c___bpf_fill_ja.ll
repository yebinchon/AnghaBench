; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c___bpf_fill_ja.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c___bpf_fill_ja.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sock_filter* }
%struct.sock_filter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*, i32, i32)* @__bpf_fill_ja to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_fill_ja(%struct.bpf_test* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock_filter, align 4
  %13 = alloca %struct.sock_filter, align 4
  %14 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sock_filter* @kmalloc_array(i32 %15, i32 4, i32 %16)
  store %struct.sock_filter* %17, %struct.sock_filter** %8, align 8
  %18 = load %struct.sock_filter*, %struct.sock_filter** %8, align 8
  %19 = icmp ne %struct.sock_filter* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %114

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = urem i32 %24, %25
  %27 = sub i32 %26, 1
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %61, %23
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.sock_filter*, %struct.sock_filter** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %40, i64 %44
  %46 = load i32, i32* @BPF_JMP, align 4
  %47 = load i32, i32* @BPF_JA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = sub i32 %49, 1
  %51 = load i32, i32* %11, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @__BPF_JUMP(i32 %48, i32 %52, i32 0, i32 0)
  %54 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.sock_filter* %45 to i8*
  %56 = bitcast %struct.sock_filter* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %35

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %28

65:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load %struct.sock_filter*, %struct.sock_filter** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %71, i64 %75
  %77 = load i32, i32* @BPF_JMP, align 4
  %78 = load i32, i32* @BPF_JA, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, 1
  %82 = load i32, i32* %11, align 4
  %83 = sub i32 %81, %82
  %84 = call i32 @__BPF_JUMP(i32 %79, i32 %83, i32 0, i32 0)
  %85 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = bitcast %struct.sock_filter* %76 to i8*
  %87 = bitcast %struct.sock_filter* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load %struct.sock_filter*, %struct.sock_filter** %8, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %92, i64 %95
  %97 = load i32, i32* @BPF_RET, align 4
  %98 = load i32, i32* @BPF_K, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @__BPF_STMT(i32 %99, i32 -1414804564)
  %101 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %14, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = bitcast %struct.sock_filter* %96 to i8*
  %103 = bitcast %struct.sock_filter* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = load %struct.sock_filter*, %struct.sock_filter** %8, align 8
  %105 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %106 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store %struct.sock_filter* %104, %struct.sock_filter** %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.bpf_test*, %struct.bpf_test** %5, align 8
  %111 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %91, %20
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.sock_filter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__BPF_JUMP(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__BPF_STMT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
