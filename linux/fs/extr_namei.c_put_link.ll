; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_put_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_put_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, %struct.saved* }
%struct.saved = type { i32, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*)* @put_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_link(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  %3 = alloca %struct.saved*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %4 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %5 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 2
  %6 = load %struct.saved*, %struct.saved** %5, align 8
  %7 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %8 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.saved, %struct.saved* %6, i64 %11
  store %struct.saved* %12, %struct.saved** %3, align 8
  %13 = load %struct.saved*, %struct.saved** %3, align 8
  %14 = getelementptr inbounds %struct.saved, %struct.saved* %13, i32 0, i32 1
  %15 = call i32 @do_delayed_call(i32* %14)
  %16 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LOOKUP_RCU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.saved*, %struct.saved** %3, align 8
  %24 = getelementptr inbounds %struct.saved, %struct.saved* %23, i32 0, i32 0
  %25 = call i32 @path_put(i32* %24)
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @do_delayed_call(i32*) #1

declare dso_local i32 @path_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
