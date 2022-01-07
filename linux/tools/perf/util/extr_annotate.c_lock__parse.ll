; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_lock__parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_lock__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { i32 }
%struct.ins_operands = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 (%struct.arch*, %struct.TYPE_9__*, %struct.map_symbol*)* }
%struct.map_symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*, %struct.ins_operands*, %struct.map_symbol*)* @lock__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock__parse(%struct.arch* %0, %struct.ins_operands* %1, %struct.map_symbol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch*, align 8
  %6 = alloca %struct.ins_operands*, align 8
  %7 = alloca %struct.map_symbol*, align 8
  store %struct.arch* %0, %struct.arch** %5, align 8
  store %struct.ins_operands* %1, %struct.ins_operands** %6, align 8
  store %struct.map_symbol* %2, %struct.map_symbol** %7, align 8
  %8 = call %struct.TYPE_9__* @zalloc(i32 4)
  %9 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %10 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %11, align 8
  %12 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %13 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %20 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %23 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %27 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = call i64 @disasm_line__parse(i32 %21, i32* %25, i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %80

34:                                               ; preds = %18
  %35 = load %struct.arch*, %struct.arch** %5, align 8
  %36 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %37 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_10__* @ins__find(%struct.arch* %35, i32 %40)
  %42 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %43 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %45, align 8
  %46 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %47 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = icmp eq %struct.TYPE_10__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %80

53:                                               ; preds = %34
  %54 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %55 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64 (%struct.arch*, %struct.TYPE_9__*, %struct.map_symbol*)*, i64 (%struct.arch*, %struct.TYPE_9__*, %struct.map_symbol*)** %59, align 8
  %61 = icmp ne i64 (%struct.arch*, %struct.TYPE_9__*, %struct.map_symbol*)* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %53
  %63 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %64 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64 (%struct.arch*, %struct.TYPE_9__*, %struct.map_symbol*)*, i64 (%struct.arch*, %struct.TYPE_9__*, %struct.map_symbol*)** %68, align 8
  %70 = load %struct.arch*, %struct.arch** %5, align 8
  %71 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %72 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load %struct.map_symbol*, %struct.map_symbol** %7, align 8
  %76 = call i64 %69(%struct.arch* %70, %struct.TYPE_9__* %74, %struct.map_symbol* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %80

79:                                               ; preds = %62, %53
  store i32 0, i32* %4, align 4
  br label %85

80:                                               ; preds = %78, %52, %33
  %81 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %82 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @zfree(%struct.TYPE_9__** %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %79, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_9__* @zalloc(i32) #1

declare dso_local i64 @disasm_line__parse(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @ins__find(%struct.arch*, i32) #1

declare dso_local i32 @zfree(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
