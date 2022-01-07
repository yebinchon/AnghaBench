; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_nlattr.c_validate_nla.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_nlattr.c_validate_nla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.libbpf_nla_policy = type { i64, i32, i32 }

@LIBBPF_NLA_TYPE_MAX = common dso_local global i64 0, align 8
@LIBBPF_NLA_UNSPEC = common dso_local global i64 0, align 8
@nla_attr_minlen = common dso_local global i32* null, align 8
@LIBBPF_NLA_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, %struct.libbpf_nla_policy*)* @validate_nla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_nla(%struct.nlattr* %0, i32 %1, %struct.libbpf_nla_policy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libbpf_nla_policy*, align 8
  %8 = alloca %struct.libbpf_nla_policy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.libbpf_nla_policy* %2, %struct.libbpf_nla_policy** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %13 = call i32 @nla_type(%struct.nlattr* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %95

21:                                               ; preds = %16
  %22 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %22, i64 %24
  store %struct.libbpf_nla_policy* %25, %struct.libbpf_nla_policy** %8, align 8
  %26 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %27 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LIBBPF_NLA_TYPE_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %95

32:                                               ; preds = %21
  %33 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %34 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %39 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %43 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LIBBPF_NLA_UNSPEC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32*, i32** @nla_attr_minlen, align 8
  %49 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %50 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %57 = call i32 @libbpf_nla_len(%struct.nlattr* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %95

61:                                               ; preds = %55
  %62 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %63 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %68 = call i32 @libbpf_nla_len(%struct.nlattr* %67)
  %69 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %70 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %95

74:                                               ; preds = %66, %61
  %75 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %76 = getelementptr inbounds %struct.libbpf_nla_policy, %struct.libbpf_nla_policy* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LIBBPF_NLA_STRING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %82 = call i8* @libbpf_nla_data(%struct.nlattr* %81)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %85 = call i32 @libbpf_nla_len(%struct.nlattr* %84)
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store i32 -1, i32* %4, align 4
  br label %95

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %74
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %92, %73, %60, %31, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @libbpf_nla_len(%struct.nlattr*) #1

declare dso_local i8* @libbpf_nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
