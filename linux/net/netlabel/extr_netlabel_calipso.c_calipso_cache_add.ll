; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_calipso_cache_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_calipso_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { i32 }
%struct.netlbl_calipso_ops = type { i32 (i8*, %struct.netlbl_lsm_secattr*)* }

@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calipso_cache_add(i8* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_calipso_ops*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %4, align 8
  %7 = load i32, i32* @ENOMSG, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = call %struct.netlbl_calipso_ops* (...) @netlbl_calipso_ops_get()
  store %struct.netlbl_calipso_ops* %9, %struct.netlbl_calipso_ops** %6, align 8
  %10 = load %struct.netlbl_calipso_ops*, %struct.netlbl_calipso_ops** %6, align 8
  %11 = icmp ne %struct.netlbl_calipso_ops* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.netlbl_calipso_ops*, %struct.netlbl_calipso_ops** %6, align 8
  %14 = getelementptr inbounds %struct.netlbl_calipso_ops, %struct.netlbl_calipso_ops* %13, i32 0, i32 0
  %15 = load i32 (i8*, %struct.netlbl_lsm_secattr*)*, i32 (i8*, %struct.netlbl_lsm_secattr*)** %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %18 = call i32 %15(i8* %16, %struct.netlbl_lsm_secattr* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local %struct.netlbl_calipso_ops* @netlbl_calipso_ops_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
