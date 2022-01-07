; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_textify_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_textify_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@textify_hooks.inetbr_names = internal constant [6 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c"PREROUTING\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FORWARD\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"POSTROUTING\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BROUTING\00", align 1
@textify_hooks.arp_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@NFPROTO_ARP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i64)* @textify_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @textify_hooks(i8* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @NFPROTO_ARP, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @textify_hooks.arp_names, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @textify_hooks.inetbr_names, i64 0, i64 0)
  store i8** %20, i8*** %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @NFPROTO_ARP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @textify_hooks.arp_names, i64 0, i64 0))
  br label %28

26:                                               ; preds = %4
  %27 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @textify_hooks.inetbr_names, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %12, align 8
  store i8 0, i8* %30, align 1
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %67, %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %67

42:                                               ; preds = %35
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %49 = load i8**, i8*** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %48, i8* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %57, %42
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %31

70:                                               ; preds = %31
  %71 = load i8*, i8** %5, align 8
  ret i8* %71
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
