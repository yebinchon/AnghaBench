; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_aa_rawdata_eq.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_aa_rawdata_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_loaddata = type { i64, i32, i32 }

@aa_g_hash_policy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_rawdata_eq(%struct.aa_loaddata* %0, %struct.aa_loaddata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_loaddata*, align 8
  %5 = alloca %struct.aa_loaddata*, align 8
  store %struct.aa_loaddata* %0, %struct.aa_loaddata** %4, align 8
  store %struct.aa_loaddata* %1, %struct.aa_loaddata** %5, align 8
  %6 = load %struct.aa_loaddata*, %struct.aa_loaddata** %4, align 8
  %7 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %10 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i64, i64* @aa_g_hash_policy, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.aa_loaddata*, %struct.aa_loaddata** %4, align 8
  %19 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %22 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 (...) @aa_hash_size()
  %25 = call i64 @memcmp(i32 %20, i32 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %41

28:                                               ; preds = %17, %14
  %29 = load %struct.aa_loaddata*, %struct.aa_loaddata** %4, align 8
  %30 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %33 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %36 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @memcmp(i32 %31, i32 %34, i64 %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %27, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @aa_hash_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
