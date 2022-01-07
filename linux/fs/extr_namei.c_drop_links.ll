; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_drop_links.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_drop_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.saved* }
%struct.saved = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*)* @drop_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_links(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.saved*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %15 = load %struct.saved*, %struct.saved** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.saved, %struct.saved* %15, i64 %17
  store %struct.saved* %18, %struct.saved** %4, align 8
  %19 = load %struct.saved*, %struct.saved** %4, align 8
  %20 = getelementptr inbounds %struct.saved, %struct.saved* %19, i32 0, i32 0
  %21 = call i32 @do_delayed_call(i32* %20)
  %22 = load %struct.saved*, %struct.saved** %4, align 8
  %23 = getelementptr inbounds %struct.saved, %struct.saved* %22, i32 0, i32 0
  %24 = call i32 @clear_delayed_call(i32* %23)
  br label %8

25:                                               ; preds = %8
  ret void
}

declare dso_local i32 @do_delayed_call(i32*) #1

declare dso_local i32 @clear_delayed_call(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
