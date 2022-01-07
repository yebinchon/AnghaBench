; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_facilities.c_x25_limit_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_facilities.c_x25_limit_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_facilities = type { i32, i32 }
%struct.x25_neigh = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"incoming winsize limited to 7\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"outgoing winsize limited to 7\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_limit_facilities(%struct.x25_facilities* %0, %struct.x25_neigh* %1) #0 {
  %3 = alloca %struct.x25_facilities*, align 8
  %4 = alloca %struct.x25_neigh*, align 8
  store %struct.x25_facilities* %0, %struct.x25_facilities** %3, align 8
  store %struct.x25_neigh* %1, %struct.x25_neigh** %4, align 8
  %5 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %6 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load %struct.x25_facilities*, %struct.x25_facilities** %3, align 8
  %11 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 7
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.x25_facilities*, %struct.x25_facilities** %3, align 8
  %17 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %16, i32 0, i32 0
  store i32 7, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.x25_facilities*, %struct.x25_facilities** %3, align 8
  %20 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.x25_facilities*, %struct.x25_facilities** %3, align 8
  %25 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %24, i32 0, i32 1
  store i32 7, i32* %25, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
