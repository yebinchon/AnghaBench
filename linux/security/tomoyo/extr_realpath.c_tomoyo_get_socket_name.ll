; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_get_socket_name.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_get_socket_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.inode = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"socket:[family=%u:type=%u:protocol=%u]\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"socket:[unknown]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.path*, i8*, i32)* @tomoyo_get_socket_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_get_socket_name(%struct.path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.path*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.path*, %struct.path** %4, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.inode* @d_backing_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.socket* @SOCKET_I(%struct.inode* %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi %struct.socket* [ %18, %16 ], [ null, %19 ]
  store %struct.socket* %21, %struct.socket** %8, align 8
  %22 = load %struct.socket*, %struct.socket** %8, align 8
  %23 = icmp ne %struct.socket* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.socket*, %struct.socket** %8, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi %struct.sock* [ %27, %24 ], [ null, %28 ]
  store %struct.sock* %30, %struct.sock** %9, align 8
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = icmp ne %struct.sock* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44)
  br label %50

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %33
  %51 = load i8*, i8** %5, align 8
  ret i8* %51
}

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local %struct.socket* @SOCKET_I(%struct.inode*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
