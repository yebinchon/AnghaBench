; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_acl_permission_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_acl_permission_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }

@S_IRWXG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @acl_permission_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_permission_check(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @current_fsuid()
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @uid_eq(i32 %11, i32 %14)
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = lshr i32 %19, 6
  store i32 %20, i32* %6, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i64 @IS_POSIXACL(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @S_IRWXG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @check_acl(%struct.inode* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %25, %21
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @in_group_p(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 3
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* @MAY_READ, align 4
  %57 = load i32, i32* @MAY_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MAY_EXEC, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @EACCES, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %63, %38
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @IS_POSIXACL(%struct.inode*) #1

declare dso_local i32 @check_acl(%struct.inode*, i32) #1

declare dso_local i64 @in_group_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
