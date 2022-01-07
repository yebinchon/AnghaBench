; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_ras.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_ras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nf_ct_ras: RAS message %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, %struct.TYPE_3__*)* @process_ras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ras(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %107 [
    i32 134, label %17
    i32 135, label %26
    i32 129, label %35
    i32 130, label %44
    i32 128, label %53
    i32 136, label %62
    i32 137, label %71
    i32 131, label %80
    i32 132, label %89
    i32 133, label %98
  ]

17:                                               ; preds = %6
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i8**, i8*** %12, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 10
  %25 = call i32 @process_grq(%struct.sk_buff* %18, %struct.nf_conn* %19, i32 %20, i32 %21, i8** %22, i32* %24)
  store i32 %25, i32* %7, align 4
  br label %113

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i8**, i8*** %12, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 9
  %34 = call i32 @process_gcf(%struct.sk_buff* %27, %struct.nf_conn* %28, i32 %29, i32 %30, i8** %31, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %113

35:                                               ; preds = %6
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i8**, i8*** %12, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 8
  %43 = call i32 @process_rrq(%struct.sk_buff* %36, %struct.nf_conn* %37, i32 %38, i32 %39, i8** %40, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %113

44:                                               ; preds = %6
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i8**, i8*** %12, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  %52 = call i32 @process_rcf(%struct.sk_buff* %45, %struct.nf_conn* %46, i32 %47, i32 %48, i8** %49, i32* %51)
  store i32 %52, i32* %7, align 4
  br label %113

53:                                               ; preds = %6
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i8**, i8*** %12, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  %61 = call i32 @process_urq(%struct.sk_buff* %54, %struct.nf_conn* %55, i32 %56, i32 %57, i8** %58, i32* %60)
  store i32 %61, i32* %7, align 4
  br label %113

62:                                               ; preds = %6
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i8**, i8*** %12, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = call i32 @process_arq(%struct.sk_buff* %63, %struct.nf_conn* %64, i32 %65, i32 %66, i8** %67, i32* %69)
  store i32 %70, i32* %7, align 4
  br label %113

71:                                               ; preds = %6
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i8**, i8*** %12, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = call i32 @process_acf(%struct.sk_buff* %72, %struct.nf_conn* %73, i32 %74, i32 %75, i8** %76, i32* %78)
  store i32 %79, i32* %7, align 4
  br label %113

80:                                               ; preds = %6
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i8**, i8*** %12, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = call i32 @process_lrq(%struct.sk_buff* %81, %struct.nf_conn* %82, i32 %83, i32 %84, i8** %85, i32* %87)
  store i32 %88, i32* %7, align 4
  br label %113

89:                                               ; preds = %6
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i8**, i8*** %12, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = call i32 @process_lcf(%struct.sk_buff* %90, %struct.nf_conn* %91, i32 %92, i32 %93, i8** %94, i32* %96)
  store i32 %97, i32* %7, align 4
  br label %113

98:                                               ; preds = %6
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i8**, i8*** %12, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = call i32 @process_irr(%struct.sk_buff* %99, %struct.nf_conn* %100, i32 %101, i32 %102, i8** %103, i32* %105)
  store i32 %106, i32* %7, align 4
  br label %113

107:                                              ; preds = %6
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %112, %98, %89, %80, %71, %62, %53, %44, %35, %26, %17
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @process_grq(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_gcf(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_rrq(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_rcf(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_urq(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_arq(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_acf(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_lrq(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_lcf(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_irr(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
