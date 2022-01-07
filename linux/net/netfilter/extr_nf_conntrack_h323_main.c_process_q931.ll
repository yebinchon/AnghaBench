; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_q931.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_q931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"nf_ct_q931: Q.931 signal %d\0A\00", align 1
@eH323_UU_PDU_h245Control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, %struct.TYPE_10__*)* @process_q931 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_q931(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, %struct.TYPE_10__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %15, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %16, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %92 [
    i32 128, label %26
    i32 132, label %37
    i32 131, label %48
    i32 133, label %59
    i32 130, label %70
    i32 129, label %81
  ]

26:                                               ; preds = %7
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i8**, i8*** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 6
  %36 = call i32 @process_setup(%struct.sk_buff* %27, %struct.nf_conn* %28, i32 %29, i32 %30, i8** %31, i32 %32, i32* %35)
  store i32 %36, i32* %18, align 4
  br label %98

37:                                               ; preds = %7
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i8**, i8*** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  %47 = call i32 @process_callproceeding(%struct.sk_buff* %38, %struct.nf_conn* %39, i32 %40, i32 %41, i8** %42, i32 %43, i32* %46)
  store i32 %47, i32* %18, align 4
  br label %98

48:                                               ; preds = %7
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i8**, i8*** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = call i32 @process_connect(%struct.sk_buff* %49, %struct.nf_conn* %50, i32 %51, i32 %52, i8** %53, i32 %54, i32* %57)
  store i32 %58, i32* %18, align 4
  br label %98

59:                                               ; preds = %7
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i8**, i8*** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = call i32 @process_alerting(%struct.sk_buff* %60, %struct.nf_conn* %61, i32 %62, i32 %63, i8** %64, i32 %65, i32* %68)
  store i32 %69, i32* %18, align 4
  br label %98

70:                                               ; preds = %7
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i8**, i8*** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = call i32 @process_facility(%struct.sk_buff* %71, %struct.nf_conn* %72, i32 %73, i32 %74, i8** %75, i32 %76, i32* %79)
  store i32 %80, i32* %18, align 4
  br label %98

81:                                               ; preds = %7
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i8**, i8*** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = call i32 @process_progress(%struct.sk_buff* %82, %struct.nf_conn* %83, i32 %84, i32 %85, i8** %86, i32 %87, i32* %90)
  store i32 %91, i32* %18, align 4
  br label %98

92:                                               ; preds = %7
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %81, %70, %59, %48, %37, %26
  %99 = load i32, i32* %18, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 -1, i32* %8, align 4
  br label %141

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @eH323_UU_PDU_h245Control, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %102
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i8**, i8*** %13, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @process_h245(%struct.sk_buff* %118, %struct.nf_conn* %119, i32 %120, i32 %121, i8** %122, i32 %123, i32* %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %117
  store i32 -1, i32* %8, align 4
  br label %141

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %110

139:                                              ; preds = %110
  br label %140

140:                                              ; preds = %139, %102
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %140, %134, %101
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i32 @process_setup(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_callproceeding(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_connect(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_alerting(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_facility(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_progress(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @process_h245(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
