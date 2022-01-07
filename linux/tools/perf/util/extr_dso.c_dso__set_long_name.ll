; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__set_long_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__set_long_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i8*, i32, %struct.rb_root*, i32 }
%struct.rb_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dso__set_long_name(%struct.dso* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dso*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb_root*, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dso*, %struct.dso** %4, align 8
  %9 = getelementptr inbounds %struct.dso, %struct.dso* %8, i32 0, i32 3
  %10 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  store %struct.rb_root* %10, %struct.rb_root** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.dso*, %struct.dso** %4, align 8
  %16 = getelementptr inbounds %struct.dso, %struct.dso* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.dso*, %struct.dso** %4, align 8
  %21 = getelementptr inbounds %struct.dso, %struct.dso* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %26 = icmp ne %struct.rb_root* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.dso*, %struct.dso** %4, align 8
  %29 = getelementptr inbounds %struct.dso, %struct.dso* %28, i32 0, i32 4
  %30 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %31 = call i32 @rb_erase(i32* %29, %struct.rb_root* %30)
  %32 = load %struct.dso*, %struct.dso** %4, align 8
  %33 = getelementptr inbounds %struct.dso, %struct.dso* %32, i32 0, i32 4
  %34 = call i32 @RB_CLEAR_NODE(i32* %33)
  %35 = load %struct.dso*, %struct.dso** %4, align 8
  %36 = getelementptr inbounds %struct.dso, %struct.dso* %35, i32 0, i32 3
  store %struct.rb_root* null, %struct.rb_root** %36, align 8
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.dso*, %struct.dso** %4, align 8
  %40 = getelementptr inbounds %struct.dso, %struct.dso* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load %struct.dso*, %struct.dso** %4, align 8
  %44 = getelementptr inbounds %struct.dso, %struct.dso* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.dso*, %struct.dso** %4, align 8
  %47 = getelementptr inbounds %struct.dso, %struct.dso* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %49 = icmp ne %struct.rb_root* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %52 = load %struct.dso*, %struct.dso** %4, align 8
  %53 = call i32 @__dsos__findnew_link_by_longname(%struct.rb_root* %51, %struct.dso* %52, i32* null)
  br label %54

54:                                               ; preds = %13, %50, %37
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__dsos__findnew_link_by_longname(%struct.rb_root*, %struct.dso*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
