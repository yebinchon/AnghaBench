; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_gdb_cmd_memread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_gdb_cmd_memread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_state = type { i32 }

@remcom_in_buffer = common dso_local global i8* null, align 8
@remcom_out_buffer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgdb_state*)* @gdb_cmd_memread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_cmd_memread(%struct.kgdb_state* %0) #0 {
  %2 = alloca %struct.kgdb_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.kgdb_state* %0, %struct.kgdb_state** %2, align 8
  %7 = load i8*, i8** @remcom_in_buffer, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %8, i8** %3, align 8
  %9 = call i64 @kgdb_hex2long(i8** %3, i64* %5)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 44
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = call i64 @kgdb_hex2long(i8** %3, i64* %4)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @remcom_out_buffer, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i8* @kgdb_mem2hex(i8* %22, i32 %23, i64 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @remcom_out_buffer, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @error_packet(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %20
  br label %39

34:                                               ; preds = %17, %11, %1
  %35 = load i32, i32* @remcom_out_buffer, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @error_packet(i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %34, %33
  ret void
}

declare dso_local i64 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i8* @kgdb_mem2hex(i8*, i32, i64) #1

declare dso_local i32 @error_packet(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
