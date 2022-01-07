; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_smark_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_smark_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xfrm_mark = type { i32, i32 }

@XFRMA_SET_MARK = common dso_local global i64 0, align 8
@XFRMA_SET_MARK_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.xfrm_mark*)* @xfrm_smark_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_smark_init(%struct.nlattr** %0, %struct.xfrm_mark* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.xfrm_mark*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.xfrm_mark* %1, %struct.xfrm_mark** %4, align 8
  %5 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %6 = load i64, i64* @XFRMA_SET_MARK, align 8
  %7 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %5, i64 %6
  %8 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %9 = icmp ne %struct.nlattr* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %12 = load i64, i64* @XFRMA_SET_MARK, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = call i8* @nla_get_u32(%struct.nlattr* %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.xfrm_mark*, %struct.xfrm_mark** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %20 = load i64, i64* @XFRMA_SET_MARK_MASK, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %10
  %25 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %26 = load i64, i64* @XFRMA_SET_MARK_MASK, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i8* @nla_get_u32(%struct.nlattr* %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.xfrm_mark*, %struct.xfrm_mark** %4, align 8
  %32 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %36

33:                                               ; preds = %10
  %34 = load %struct.xfrm_mark*, %struct.xfrm_mark** %4, align 8
  %35 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %34, i32 0, i32 1
  store i32 -1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %24
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.xfrm_mark*, %struct.xfrm_mark** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.xfrm_mark*, %struct.xfrm_mark** %4, align 8
  %41 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %36
  ret void
}

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
