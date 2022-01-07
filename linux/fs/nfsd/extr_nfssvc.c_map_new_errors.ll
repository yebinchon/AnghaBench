; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_map_new_errors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_map_new_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfserr_jukebox = common dso_local global i64 0, align 8
@nfserr_dropit = common dso_local global i64 0, align 8
@nfserr_wrongsec = common dso_local global i64 0, align 8
@nfserr_acces = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @map_new_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_new_errors(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @nfserr_jukebox, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i64, i64* @nfserr_dropit, align 8
  store i64 %13, i64* %3, align 8
  br label %25

14:                                               ; preds = %9, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @nfserr_wrongsec, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64, i64* @nfserr_acces, align 8
  store i64 %22, i64* %3, align 8
  br label %25

23:                                               ; preds = %18, %14
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %23, %21, %12
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
