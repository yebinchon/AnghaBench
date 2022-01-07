; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_parse_name_union_quoted.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_parse_name_union_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8* }
%struct.tomoyo_name_union = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_acl_param*, %struct.tomoyo_name_union*)* @tomoyo_parse_name_union_quoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_parse_name_union_quoted(%struct.tomoyo_acl_param* %0, %struct.tomoyo_name_union* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_name_union*, align 8
  %6 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store %struct.tomoyo_name_union* %1, %struct.tomoyo_name_union** %5, align 8
  %7 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %8 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %16 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %17 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %15, %struct.tomoyo_name_union* %16)
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @tomoyo_get_dqword(i8* %19)
  %21 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %22 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %24 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param*, %struct.tomoyo_name_union*) #1

declare dso_local i32* @tomoyo_get_dqword(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
