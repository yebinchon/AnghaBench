; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_old_inode_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_old_inode_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@inode_init_security = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_old_inode_init_security(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, i8** %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.qstr* %2, %struct.qstr** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call i32 @IS_PRIVATE(%struct.inode* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %32

21:                                               ; preds = %6
  %22 = load i32, i32* @inode_init_security, align 4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = load %struct.qstr*, %struct.qstr** %10, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = load i8**, i8*** %12, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = call i32 @call_int_hook(i32 %22, i32 %24, %struct.inode* %25, %struct.inode* %26, %struct.qstr* %27, i8** %28, i8** %29, i64* %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @call_int_hook(i32, i32, %struct.inode*, %struct.inode*, %struct.qstr*, i8**, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
