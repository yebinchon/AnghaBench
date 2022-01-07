; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_ns_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_ns_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ns*, %struct.aa_ns*)* @ns_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_cmp(%struct.aa_ns* %0, %struct.aa_ns* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca %struct.aa_ns*, align 8
  %6 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %4, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %5, align 8
  %7 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %8 = icmp ne %struct.aa_ns* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @AA_BUG(i32 %10)
  %12 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %13 = icmp ne %struct.aa_ns* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %18 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %26 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @AA_BUG(i32 %31)
  %33 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %34 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %35 = icmp eq %struct.aa_ns* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %39 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %42 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %37
  %50 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %51 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %55 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcmp(i32 %53, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %49, %47, %36
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
