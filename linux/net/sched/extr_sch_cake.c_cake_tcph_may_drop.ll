; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_tcph_may_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_tcph_may_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }

@TCP_FLAG_ACK = common dso_local global i32 0, align 4
@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, i32, i32)* @cake_tcph_may_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_tcph_may_drop(%struct.tcphdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %15 = call i32 @__tcp_hdrlen(%struct.tcphdr* %14)
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i64 1
  %21 = bitcast %struct.tcphdr* %20 to i32*
  store i32* %21, i32** %9, align 8
  %22 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %23 = call i32 @tcp_flag_word(%struct.tcphdr* %22)
  %24 = call i32 @cpu_to_be32(i32 255787008)
  %25 = and i32 %23, %24
  %26 = load i32, i32* @TCP_FLAG_ACK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %92, %45, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %101

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %9, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @TCPOPT_EOL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %101

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @TCPOPT_NOP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  br label %30

48:                                               ; preds = %41
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %9, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %48
  br label %101

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  switch i32 %60, label %91 [
    i32 133, label %61
    i32 131, label %62
    i32 129, label %68
    i32 132, label %90
    i32 128, label %90
    i32 130, label %90
    i32 134, label %90
    i32 135, label %90
  ]

61:                                               ; preds = %59
  br label %92

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = srem i32 %63, 8
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %102

67:                                               ; preds = %62
  br label %92

68:                                               ; preds = %59
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %102

73:                                               ; preds = %68
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @get_unaligned_be32(i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = call i32 @get_unaligned_be32(i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @after(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @after(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %73
  store i32 0, i32* %4, align 4
  br label %102

89:                                               ; preds = %83
  br label %92

90:                                               ; preds = %59, %59, %59, %59, %59
  br label %91

91:                                               ; preds = %59, %90
  store i32 0, i32* %4, align 4
  br label %102

92:                                               ; preds = %89, %67, %61
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 2
  %95 = load i32*, i32** %9, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %30

101:                                              ; preds = %58, %40, %30
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %91, %88, %72, %66, %28
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @__tcp_hdrlen(%struct.tcphdr*) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
