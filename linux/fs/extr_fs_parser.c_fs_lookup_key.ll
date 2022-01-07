; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_parser.c_fs_lookup_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_parser.c_fs_lookup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_parameter_spec = type { i64 }
%struct.fs_parameter_description = type { %struct.fs_parameter_spec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_parameter_spec* (%struct.fs_parameter_description*, i8*)* @fs_lookup_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_parameter_spec* @fs_lookup_key(%struct.fs_parameter_description* %0, i8* %1) #0 {
  %3 = alloca %struct.fs_parameter_spec*, align 8
  %4 = alloca %struct.fs_parameter_description*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fs_parameter_spec*, align 8
  store %struct.fs_parameter_description* %0, %struct.fs_parameter_description** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %4, align 8
  %8 = getelementptr inbounds %struct.fs_parameter_description, %struct.fs_parameter_description* %7, i32 0, i32 0
  %9 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %8, align 8
  %10 = icmp ne %struct.fs_parameter_spec* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.fs_parameter_spec* null, %struct.fs_parameter_spec** %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.fs_parameter_description*, %struct.fs_parameter_description** %4, align 8
  %14 = getelementptr inbounds %struct.fs_parameter_description, %struct.fs_parameter_description* %13, i32 0, i32 0
  %15 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %14, align 8
  store %struct.fs_parameter_spec* %15, %struct.fs_parameter_spec** %6, align 8
  br label %16

16:                                               ; preds = %31, %12
  %17 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %6, align 8
  %18 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %6, align 8
  %23 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i64 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %6, align 8
  store %struct.fs_parameter_spec* %29, %struct.fs_parameter_spec** %3, align 8
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %6, align 8
  %33 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %32, i32 1
  store %struct.fs_parameter_spec* %33, %struct.fs_parameter_spec** %6, align 8
  br label %16

34:                                               ; preds = %16
  store %struct.fs_parameter_spec* null, %struct.fs_parameter_spec** %3, align 8
  br label %35

35:                                               ; preds = %34, %28, %11
  %36 = load %struct.fs_parameter_spec*, %struct.fs_parameter_spec** %3, align 8
  ret %struct.fs_parameter_spec* %36
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
