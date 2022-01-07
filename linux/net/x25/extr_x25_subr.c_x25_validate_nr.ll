; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_validate_nr.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_validate_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.x25_sock = type { i16, i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@X25_EMODULUS = common dso_local global i32 0, align 4
@X25_SMODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_validate_nr(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.x25_sock*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.x25_sock* @x25_sk(%struct.sock* %9)
  store %struct.x25_sock* %10, %struct.x25_sock** %6, align 8
  %11 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %12 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  store i16 %13, i16* %7, align 2
  %14 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %15 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @X25_EMODULUS, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @X25_SMODULUS, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %41, %24
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %30 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %7, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %58

41:                                               ; preds = %34
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = srem i32 %44, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %7, align 2
  br label %26

48:                                               ; preds = %26
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %52 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %51, i32 0, i32 1
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %50, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %40
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
