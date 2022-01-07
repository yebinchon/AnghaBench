; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_labels.c_nf_connlabels_replace.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_labels.c_nf_connlabels_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_labels = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@IPCT_LABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_connlabels_replace(%struct.nf_conn* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn_labels*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %16 = call %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn* %15)
  store %struct.nf_conn_labels* %16, %struct.nf_conn_labels** %10, align 8
  %17 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %10, align 8
  %18 = icmp ne %struct.nf_conn_labels* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %98

22:                                               ; preds = %4
  store i32 8, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %10, align 8
  %36 = getelementptr inbounds %struct.nf_conn_labels, %struct.nf_conn_labels* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %68, %34
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  br label %58

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i32 [ %56, %50 ], [ 0, %57 ]
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @replace_u32(i32* %47, i32 %59, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %87, %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @replace_u32(i32* %85, i32 0, i32 0)
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %77

90:                                               ; preds = %77
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @IPCT_LABEL, align 4
  %95 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %96 = call i32 @nf_conntrack_event_cache(i32 %94, %struct.nf_conn* %95)
  br label %97

97:                                               ; preds = %93, %90
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %19
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn*) #1

declare dso_local i32 @replace_u32(i32*, i32, i32) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
