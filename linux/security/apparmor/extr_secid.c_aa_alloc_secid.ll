; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_secid.c_aa_alloc_secid.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_secid.c_aa_alloc_secid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }

@secid_lock = common dso_local global i32 0, align 4
@aa_secids = common dso_local global i32 0, align 4
@AA_FIRST_SECID = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AA_SECID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_alloc_secid(%struct.aa_label* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @idr_preload(i32 %8)
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @secid_lock, i64 %10)
  %12 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %13 = load i32, i32* @AA_FIRST_SECID, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i32 @idr_alloc(i32* @aa_secids, %struct.aa_label* %12, i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @secid_lock, i64 %16)
  %18 = call i32 (...) @idr_preload_end()
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @AA_SECID_INVALID, align 4
  %23 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %24 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AA_SECID_INVALID, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @AA_BUG(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %34 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.aa_label*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @AA_BUG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
