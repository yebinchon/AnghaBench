; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_iterate.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"linearize failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfpkt_iterate(%struct.cfpkt* %0, i32 (i32, i8*, i32)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32 (i32, i8*, i32)*, align 8
  %7 = alloca i32, align 4
  store %struct.cfpkt* %0, %struct.cfpkt** %5, align 8
  store i32 (i32, i8*, i32)* %1, i32 (i32, i8*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %9 = call i32 @is_erronous(%struct.cfpkt* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EPROTO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %17 = getelementptr inbounds %struct.cfpkt, %struct.cfpkt* %16, i32 0, i32 0
  %18 = call i64 @skb_linearize(%struct.TYPE_2__* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %25 = call i32 @PKT_ERROR(%struct.cfpkt* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EPROTO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %15
  %29 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %32 = getelementptr inbounds %struct.cfpkt, %struct.cfpkt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %36 = call i32 @cfpkt_getlen(%struct.cfpkt* %35)
  %37 = call i32 %29(i32 %30, i8* %34, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %23, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_erronous(%struct.cfpkt*) #1

declare dso_local i64 @skb_linearize(%struct.TYPE_2__*) #1

declare dso_local i32 @PKT_ERROR(%struct.cfpkt*, i8*) #1

declare dso_local i32 @cfpkt_getlen(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
