; ModuleID = '/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_read_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 (%struct.strparser.0*, i32)* }
%struct.strparser.0 = type opaque
%struct.TYPE_11__ = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.strparser* }

@EBUSY = common dso_local global i32 0, align 4
@strp_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strparser*)* @strp_read_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strp_read_sock(%struct.strparser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strparser*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  store %struct.strparser* %0, %struct.strparser** %3, align 8
  %6 = load %struct.strparser*, %struct.strparser** %3, align 8
  %7 = getelementptr inbounds %struct.strparser, %struct.strparser* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %4, align 8
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = icmp ne %struct.socket* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* %23, null
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %18, %13, %1
  %27 = phi i1 [ true, %13 ], [ true, %1 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load %struct.strparser*, %struct.strparser** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.strparser* %35, %struct.strparser** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)** %43, align 8
  %45 = load %struct.strparser*, %struct.strparser** %3, align 8
  %46 = getelementptr inbounds %struct.strparser, %struct.strparser* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i32, i32* @strp_recv, align 4
  %49 = call i32 %44(%struct.TYPE_11__* %47, %struct.TYPE_10__* %5, i32 %48)
  %50 = load %struct.strparser*, %struct.strparser** %3, align 8
  %51 = getelementptr inbounds %struct.strparser, %struct.strparser* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32 (%struct.strparser.0*, i32)*, i32 (%struct.strparser.0*, i32)** %52, align 8
  %54 = load %struct.strparser*, %struct.strparser** %3, align 8
  %55 = bitcast %struct.strparser* %54 to %struct.strparser.0*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %53(%struct.strparser.0* %55, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %34, %31
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
