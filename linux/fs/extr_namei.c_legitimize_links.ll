; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_legitimize_links.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_legitimize_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.saved* }
%struct.saved = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @legitimize_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimize_links(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saved*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %6
  %13 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %15 = load %struct.saved*, %struct.saved** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.saved, %struct.saved* %15, i64 %17
  store %struct.saved* %18, %struct.saved** %5, align 8
  %19 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %20 = load %struct.saved*, %struct.saved** %5, align 8
  %21 = getelementptr inbounds %struct.saved, %struct.saved* %20, i32 0, i32 1
  %22 = load %struct.saved*, %struct.saved** %5, align 8
  %23 = getelementptr inbounds %struct.saved, %struct.saved* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @legitimize_path(%struct.nameidata* %19, i32* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %12
  %32 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %33 = call i32 @drop_links(%struct.nameidata* %32)
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %6

42:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @legitimize_path(%struct.nameidata*, i32*, i32) #1

declare dso_local i32 @drop_links(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
