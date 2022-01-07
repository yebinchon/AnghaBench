; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_prep.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_mon_state = type { i32, i32 }
%struct.tipc_monitor = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_mon_domain = type { i8*, i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_mon_prep(%struct.net* %0, i8* %1, i32* %2, %struct.tipc_mon_state* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tipc_mon_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_monitor*, align 8
  %12 = alloca %struct.tipc_mon_domain*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.tipc_mon_state* %3, %struct.tipc_mon_state** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %15, i32 %16)
  store %struct.tipc_monitor* %17, %struct.tipc_monitor** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.tipc_mon_domain*
  store %struct.tipc_mon_domain* %19, %struct.tipc_mon_domain** %12, align 8
  %20 = load %struct.tipc_monitor*, %struct.tipc_monitor** %11, align 8
  %21 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load %struct.tipc_monitor*, %struct.tipc_monitor** %11, align 8
  %25 = call i32 @tipc_mon_is_active(%struct.net* %23, %struct.tipc_monitor* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %29 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %28, i32 0, i32 3
  store i8* null, i8** %29, align 8
  br label %85

30:                                               ; preds = %5
  %31 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %9, align 8
  %32 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %30
  %40 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %41 = call i32 @dom_rec_len(%struct.tipc_mon_domain* %40, i32 0)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i8* @htons(i32 %44)
  %46 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %47 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %51 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %9, align 8
  %53 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htons(i32 %54)
  %56 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %57 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %59 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %85

60:                                               ; preds = %30
  %61 = load %struct.tipc_monitor*, %struct.tipc_monitor** %11, align 8
  %62 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %61, i32 0, i32 1
  %63 = call i32 @read_lock_bh(i32* %62)
  %64 = load %struct.tipc_monitor*, %struct.tipc_monitor** %11, align 8
  %65 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.tipc_monitor*, %struct.tipc_monitor** %11, align 8
  %73 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %72, i32 0, i32 2
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @memcpy(i8* %71, %struct.TYPE_2__* %73, i32 %74)
  %76 = load %struct.tipc_monitor*, %struct.tipc_monitor** %11, align 8
  %77 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %76, i32 0, i32 1
  %78 = call i32 @read_unlock_bh(i32* %77)
  %79 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %9, align 8
  %80 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @htons(i32 %81)
  %83 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %12, align 8
  %84 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %60, %39, %27
  ret void
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i32) #1

declare dso_local i32 @tipc_mon_is_active(%struct.net*, %struct.tipc_monitor*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dom_rec_len(%struct.tipc_mon_domain*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
