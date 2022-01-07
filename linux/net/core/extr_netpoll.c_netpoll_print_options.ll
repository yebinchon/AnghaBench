; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_print_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_print_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { i32*, %struct.TYPE_4__, i64, i32*, i32*, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"local port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"local IPv6 address %pI6c\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"local IPv4 address %pI4\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"interface '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"remote port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"remote IPv6 address %pI6c\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"remote IPv4 address %pI4\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"remote ethernet address %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_print_options(%struct.netpoll* %0) #0 {
  %2 = alloca %struct.netpoll*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %2, align 8
  %3 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %4 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %5 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @np_info(%struct.netpoll* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %9 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %14 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %15 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @np_info(%struct.netpoll* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %20 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %21 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @np_info(%struct.netpoll* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %26 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %27 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @np_info(%struct.netpoll* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %28)
  %30 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %31 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %32 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @np_info(%struct.netpoll* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %33)
  %35 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %36 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %41 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %42 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @np_info(%struct.netpoll* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %43)
  br label %51

45:                                               ; preds = %24
  %46 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %47 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %48 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @np_info(%struct.netpoll* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %53 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %54 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @np_info(%struct.netpoll* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %55)
  ret void
}

declare dso_local i32 @np_info(%struct.netpoll*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
