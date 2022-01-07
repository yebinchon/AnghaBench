; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_create_wakeup_source.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_create_wakeup_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epitem = type { i32, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.wakeup_source = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"eventpoll\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epitem*)* @ep_create_wakeup_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_create_wakeup_source(%struct.epitem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.epitem*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wakeup_source*, align 8
  store %struct.epitem* %0, %struct.epitem** %3, align 8
  %6 = load %struct.epitem*, %struct.epitem** %3, align 8
  %7 = getelementptr inbounds %struct.epitem, %struct.epitem* %6, i32 0, i32 2
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = call i8* @wakeup_source_register(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.epitem*, %struct.epitem** %3, align 8
  %15 = getelementptr inbounds %struct.epitem, %struct.epitem* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i8* %13, i8** %17, align 8
  %18 = load %struct.epitem*, %struct.epitem** %3, align 8
  %19 = getelementptr inbounds %struct.epitem, %struct.epitem* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.epitem*, %struct.epitem** %3, align 8
  %30 = getelementptr inbounds %struct.epitem, %struct.epitem* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @wakeup_source_register(i32* null, i8* %39)
  %41 = bitcast i8* %40 to %struct.wakeup_source*
  store %struct.wakeup_source* %41, %struct.wakeup_source** %5, align 8
  %42 = load %struct.wakeup_source*, %struct.wakeup_source** %5, align 8
  %43 = icmp ne %struct.wakeup_source* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %53

47:                                               ; preds = %28
  %48 = load %struct.epitem*, %struct.epitem** %3, align 8
  %49 = getelementptr inbounds %struct.epitem, %struct.epitem* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wakeup_source*, %struct.wakeup_source** %5, align 8
  %52 = call i32 @rcu_assign_pointer(i32 %50, %struct.wakeup_source* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %44, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @wakeup_source_register(i32*, i8*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.wakeup_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
