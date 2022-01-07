; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"bcCdgl:qt:vV\00", align 1
@cfg_use_bind = common dso_local global i32 0, align 4
@cfg_use_csum_off = common dso_local global i32 0, align 4
@cfg_use_csum_off_bad = common dso_local global i32 0, align 4
@cfg_use_dgram = common dso_local global i32 0, align 4
@cfg_use_gso = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@cfg_payload_len = common dso_local global i8* null, align 8
@cfg_use_qdisc_bypass = common dso_local global i32 0, align 4
@cfg_truncate_len = common dso_local global i8* null, align 8
@cfg_use_vnet = common dso_local global i32 0, align 4
@cfg_use_vlan = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: parse error\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"option vlan (-V) conflicts with dgram (-d)\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"option csum offload (-c) requires vnet (-v)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"option csum bad (-C) requires csum offload (-c)\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"option gso (-g) requires csum offload (-c)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %27 [
    i32 98, label %13
    i32 99, label %14
    i32 67, label %15
    i32 100, label %16
    i32 103, label %17
    i32 108, label %18
    i32 113, label %21
    i32 116, label %22
    i32 118, label %25
    i32 86, label %26
  ]

13:                                               ; preds = %11
  store i32 1, i32* @cfg_use_bind, align 4
  br label %32

14:                                               ; preds = %11
  store i32 1, i32* @cfg_use_csum_off, align 4
  br label %32

15:                                               ; preds = %11
  store i32 1, i32* @cfg_use_csum_off_bad, align 4
  br label %32

16:                                               ; preds = %11
  store i32 1, i32* @cfg_use_dgram, align 4
  br label %32

17:                                               ; preds = %11
  store i32 1, i32* @cfg_use_gso, align 4
  br label %32

18:                                               ; preds = %11
  %19 = load i32, i32* @optarg, align 4
  %20 = call i8* @strtoul(i32 %19, i32* null, i32 0)
  store i8* %20, i8** @cfg_payload_len, align 8
  br label %32

21:                                               ; preds = %11
  store i32 1, i32* @cfg_use_qdisc_bypass, align 4
  br label %32

22:                                               ; preds = %11
  %23 = load i32, i32* @optarg, align 4
  %24 = call i8* @strtoul(i32 %23, i32* null, i32 0)
  store i8* %24, i8** @cfg_truncate_len, align 8
  br label %32

25:                                               ; preds = %11
  store i32 1, i32* @cfg_use_vnet, align 4
  br label %32

26:                                               ; preds = %11
  store i32 1, i32* @cfg_use_vlan, align 4
  br label %32

27:                                               ; preds = %11
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %26, %25, %22, %21, %18, %17, %16, %15, %14, %13
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* @cfg_use_vlan, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @cfg_use_dgram, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36, %33
  %42 = load i32, i32* @cfg_use_csum_off, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @cfg_use_vnet, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = load i32, i32* @cfg_use_csum_off_bad, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* @cfg_use_csum_off, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52, %49
  %58 = load i32, i32* @cfg_use_gso, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* @cfg_use_csum_off, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60, %57
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtoul(i32, i32*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
