; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_add_pass.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_add_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32* }
%struct.netlbl_audit = type { i32 }
%struct.cipso_v4_doi = type { i32 }

@NLBL_CIPSOV4_A_TAGLST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CIPSO_V4_MAP_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.netlbl_audit*)* @netlbl_cipsov4_add_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_cipsov4_add_pass(%struct.genl_info* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.netlbl_audit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cipso_v4_doi*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %5, align 8
  store %struct.cipso_v4_doi* null, %struct.cipso_v4_doi** %7, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @NLBL_CIPSOV4_A_TAGLST, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.cipso_v4_doi* @kmalloc(i32 4, i32 %19)
  store %struct.cipso_v4_doi* %20, %struct.cipso_v4_doi** %7, align 8
  %21 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %7, align 8
  %22 = icmp eq %struct.cipso_v4_doi* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load i32, i32* @CIPSO_V4_MAP_PASS, align 4
  %28 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %7, align 8
  %29 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %31 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %7, align 8
  %32 = call i32 @netlbl_cipsov4_add_common(%struct.genl_info* %30, %struct.cipso_v4_doi* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %44

36:                                               ; preds = %26
  %37 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %7, align 8
  %38 = load %struct.netlbl_audit*, %struct.netlbl_audit** %5, align 8
  %39 = call i32 @cipso_v4_doi_add(%struct.cipso_v4_doi* %37, %struct.netlbl_audit* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %48

44:                                               ; preds = %42, %35
  %45 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %7, align 8
  %46 = call i32 @cipso_v4_doi_free(%struct.cipso_v4_doi* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %43, %23, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.cipso_v4_doi* @kmalloc(i32, i32) #1

declare dso_local i32 @netlbl_cipsov4_add_common(%struct.genl_info*, %struct.cipso_v4_doi*) #1

declare dso_local i32 @cipso_v4_doi_add(%struct.cipso_v4_doi*, %struct.netlbl_audit*) #1

declare dso_local i32 @cipso_v4_doi_free(%struct.cipso_v4_doi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
