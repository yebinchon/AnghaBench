; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcshare.c_nlmsvc_traverse_shares.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcshare.c_nlmsvc_traverse_shares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.nlm_file = type { %struct.nlm_share* }
%struct.nlm_share = type { %struct.nlm_share*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlmsvc_traverse_shares(%struct.nlm_host* %0, %struct.nlm_file* %1, i64 (i32, %struct.nlm_host*)* %2) #0 {
  %4 = alloca %struct.nlm_host*, align 8
  %5 = alloca %struct.nlm_file*, align 8
  %6 = alloca i64 (i32, %struct.nlm_host*)*, align 8
  %7 = alloca %struct.nlm_share*, align 8
  %8 = alloca %struct.nlm_share**, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %4, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %5, align 8
  store i64 (i32, %struct.nlm_host*)* %2, i64 (i32, %struct.nlm_host*)** %6, align 8
  %9 = load %struct.nlm_file*, %struct.nlm_file** %5, align 8
  %10 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %9, i32 0, i32 0
  store %struct.nlm_share** %10, %struct.nlm_share*** %8, align 8
  br label %11

11:                                               ; preds = %30, %23, %3
  %12 = load %struct.nlm_share**, %struct.nlm_share*** %8, align 8
  %13 = load %struct.nlm_share*, %struct.nlm_share** %12, align 8
  store %struct.nlm_share* %13, %struct.nlm_share** %7, align 8
  %14 = icmp ne %struct.nlm_share* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i64 (i32, %struct.nlm_host*)*, i64 (i32, %struct.nlm_host*)** %6, align 8
  %17 = load %struct.nlm_share*, %struct.nlm_share** %7, align 8
  %18 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %21 = call i64 %16(i32 %19, %struct.nlm_host* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.nlm_share*, %struct.nlm_share** %7, align 8
  %25 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %24, i32 0, i32 0
  %26 = load %struct.nlm_share*, %struct.nlm_share** %25, align 8
  %27 = load %struct.nlm_share**, %struct.nlm_share*** %8, align 8
  store %struct.nlm_share* %26, %struct.nlm_share** %27, align 8
  %28 = load %struct.nlm_share*, %struct.nlm_share** %7, align 8
  %29 = call i32 @kfree(%struct.nlm_share* %28)
  br label %11

30:                                               ; preds = %15
  %31 = load %struct.nlm_share*, %struct.nlm_share** %7, align 8
  %32 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %31, i32 0, i32 0
  store %struct.nlm_share** %32, %struct.nlm_share*** %8, align 8
  br label %11

33:                                               ; preds = %11
  ret void
}

declare dso_local i32 @kfree(%struct.nlm_share*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
