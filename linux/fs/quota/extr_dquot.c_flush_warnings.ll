; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_flush_warnings.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_flush_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot_warn = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot_warn*)* @flush_warnings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_warnings(%struct.dquot_warn* %0) #0 {
  %2 = alloca %struct.dquot_warn*, align 8
  %3 = alloca i32, align 4
  store %struct.dquot_warn* %0, %struct.dquot_warn** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAXQUOTAS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = load %struct.dquot_warn*, %struct.dquot_warn** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %9, i64 %11
  %13 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QUOTA_NL_NOWARN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %40

18:                                               ; preds = %8
  %19 = load %struct.dquot_warn*, %struct.dquot_warn** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %19, i64 %21
  %23 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dquot_warn*, %struct.dquot_warn** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %25, i64 %27
  %29 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dquot_warn*, %struct.dquot_warn** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %33, i64 %35
  %37 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @quota_send_warning(i32 %24, i32 %32, i64 %38)
  br label %40

40:                                               ; preds = %18, %17
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4

43:                                               ; preds = %4
  ret void
}

declare dso_local i32 @quota_send_warning(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
