; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_elem_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_elem_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ip_set = type { i64*, i32, i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_CADT_FLAGS = common dso_local global i64 0, align 8
@IPSET_FLAG_WITH_FORCEADD = common dso_local global i32 0, align 4
@IPSET_CREATE_FLAG_FORCEADD = common dso_local global i32 0, align 4
@IPSET_EXT_ID_MAX = common dso_local global i32 0, align 4
@ip_set_extensions = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_set_elem_len(%struct.ip_set* %0, %struct.nlattr** %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %12 = load i64, i64* @IPSET_ATTR_CADT_FLAGS, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %18 = load i64, i64* @IPSET_ATTR_CADT_FLAGS, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i32 @ip_set_get_h32(%struct.nlattr* %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %16, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @IPSET_FLAG_WITH_FORCEADD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @IPSET_CREATE_FLAG_FORCEADD, align 4
  %29 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %30 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i64 1, i64* %8, align 8
  br label %37

37:                                               ; preds = %36, %33
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %83, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IPSET_EXT_ID_MAX, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %46 = call i32 @add_extension(i32 %43, i32 %44, %struct.nlattr** %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %83

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ip_set_extensions, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @ALIGN(i64 %50, i64 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %60 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %58, i64* %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ip_set_extensions, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %72 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ip_set_extensions, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %49, %48
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %38

86:                                               ; preds = %38
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @ALIGN(i64 %87, i64 %88)
  ret i64 %89
}

declare dso_local i32 @ip_set_get_h32(%struct.nlattr*) #1

declare dso_local i32 @add_extension(i32, i32, %struct.nlattr**) #1

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
