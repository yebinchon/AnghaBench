; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_node_name_chars.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_node_name_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"Bad character '%c' in node name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_node_name_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_node_name_chars(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %8 = load %struct.node*, %struct.node** %6, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.check*, %struct.check** %4, align 8
  %12 = getelementptr inbounds %struct.check, %struct.check* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strspn(i32* %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.node*, %struct.node** %6, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @strlen(i32* %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.check*, %struct.check** %4, align 8
  %23 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %24 = load %struct.node*, %struct.node** %6, align 8
  %25 = load %struct.node*, %struct.node** %6, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FAIL(%struct.check* %22, %struct.dt_info* %23, %struct.node* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @strspn(i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
