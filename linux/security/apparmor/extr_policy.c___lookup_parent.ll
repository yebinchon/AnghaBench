; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___lookup_parent.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___lookup_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_policy = type { i32 }
%struct.aa_ns = type { %struct.aa_policy }
%struct.aa_profile = type { %struct.aa_policy }

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_policy* (%struct.aa_ns*, i8*)* @__lookup_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_policy* @__lookup_parent(%struct.aa_ns* %0, i8* %1) #0 {
  %3 = alloca %struct.aa_policy*, align 8
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aa_policy*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i8*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.aa_profile* null, %struct.aa_profile** %7, align 8
  %9 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %10 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %9, i32 0, i32 0
  store %struct.aa_policy* %10, %struct.aa_policy** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.aa_policy*, %struct.aa_policy** %6, align 8
  %18 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %17, i32 0, i32 0
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.aa_profile* @__strn_find_child(i32* %18, i8* %19, i32 %25)
  store %struct.aa_profile* %26, %struct.aa_profile** %7, align 8
  %27 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %28 = icmp ne %struct.aa_profile* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  store %struct.aa_policy* null, %struct.aa_policy** %3, align 8
  br label %46

30:                                               ; preds = %16
  %31 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %32 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %31, i32 0, i32 0
  store %struct.aa_policy* %32, %struct.aa_policy** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %8, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %39 = icmp ne %struct.aa_profile* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %42 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %41, i32 0, i32 0
  store %struct.aa_policy* %42, %struct.aa_policy** %3, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %45 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %44, i32 0, i32 0
  store %struct.aa_policy* %45, %struct.aa_policy** %3, align 8
  br label %46

46:                                               ; preds = %43, %40, %29
  %47 = load %struct.aa_policy*, %struct.aa_policy** %3, align 8
  ret %struct.aa_policy* %47
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.aa_profile* @__strn_find_child(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
