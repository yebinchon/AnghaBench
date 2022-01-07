; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_netlbl_calipso_add_pass.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_netlbl_calipso_add_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32* }
%struct.netlbl_audit = type { i32 }
%struct.calipso_doi = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CALIPSO_MAP_PASS = common dso_local global i32 0, align 4
@NLBL_CALIPSO_A_DOI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.netlbl_audit*)* @netlbl_calipso_add_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_calipso_add_pass(%struct.genl_info* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.netlbl_audit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.calipso_doi*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %5, align 8
  store %struct.calipso_doi* null, %struct.calipso_doi** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.calipso_doi* @kmalloc(i32 8, i32 %8)
  store %struct.calipso_doi* %9, %struct.calipso_doi** %7, align 8
  %10 = load %struct.calipso_doi*, %struct.calipso_doi** %7, align 8
  %11 = icmp ne %struct.calipso_doi* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* @CALIPSO_MAP_PASS, align 4
  %17 = load %struct.calipso_doi*, %struct.calipso_doi** %7, align 8
  %18 = getelementptr inbounds %struct.calipso_doi, %struct.calipso_doi* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @NLBL_CALIPSO_A_DOI, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nla_get_u32(i32 %24)
  %26 = load %struct.calipso_doi*, %struct.calipso_doi** %7, align 8
  %27 = getelementptr inbounds %struct.calipso_doi, %struct.calipso_doi* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.calipso_doi*, %struct.calipso_doi** %7, align 8
  %29 = load %struct.netlbl_audit*, %struct.netlbl_audit** %5, align 8
  %30 = call i32 @calipso_doi_add(%struct.calipso_doi* %28, %struct.netlbl_audit* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load %struct.calipso_doi*, %struct.calipso_doi** %7, align 8
  %35 = call i32 @calipso_doi_free(%struct.calipso_doi* %34)
  br label %36

36:                                               ; preds = %33, %15
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.calipso_doi* @kmalloc(i32, i32) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @calipso_doi_add(%struct.calipso_doi*, %struct.netlbl_audit*) #1

declare dso_local i32 @calipso_doi_free(%struct.calipso_doi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
