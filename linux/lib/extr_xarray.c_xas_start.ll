; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_start.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@XA_CHUNK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xa_state*)* @xas_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xas_start(%struct.xa_state* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  %5 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %6 = call i64 @xas_valid(%struct.xa_state* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %10 = call i8* @xas_reload(%struct.xa_state* %9)
  store i8* %10, i8** %2, align 8
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %13 = call i64 @xas_error(%struct.xa_state* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %52

16:                                               ; preds = %11
  %17 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %18 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @xa_head(i32 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @xa_is_node(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %26 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %31 = call i8* @set_bounds(%struct.xa_state* %30)
  store i8* %31, i8** %2, align 8
  br label %52

32:                                               ; preds = %24
  br label %48

33:                                               ; preds = %16
  %34 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %35 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call %struct.TYPE_2__* @xa_to_node(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %36, %40
  %42 = load i32, i32* @XA_CHUNK_MASK, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %46 = call i8* @set_bounds(%struct.xa_state* %45)
  store i8* %46, i8** %2, align 8
  br label %52

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %50 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %48, %44, %29, %15, %8
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i64 @xas_valid(%struct.xa_state*) #1

declare dso_local i8* @xas_reload(%struct.xa_state*) #1

declare dso_local i64 @xas_error(%struct.xa_state*) #1

declare dso_local i8* @xa_head(i32) #1

declare dso_local i32 @xa_is_node(i8*) #1

declare dso_local i8* @set_bounds(%struct.xa_state*) #1

declare dso_local %struct.TYPE_2__* @xa_to_node(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
