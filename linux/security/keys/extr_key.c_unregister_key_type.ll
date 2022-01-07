; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_unregister_key_type.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_unregister_key_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32, i32 }

@key_types_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Key type %s unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_key_type(%struct.key_type* %0) #0 {
  %2 = alloca %struct.key_type*, align 8
  store %struct.key_type* %0, %struct.key_type** %2, align 8
  %3 = call i32 @down_write(i32* @key_types_sem)
  %4 = load %struct.key_type*, %struct.key_type** %2, align 8
  %5 = getelementptr inbounds %struct.key_type, %struct.key_type* %4, i32 0, i32 1
  %6 = call i32 @list_del_init(i32* %5)
  %7 = call i32 @downgrade_write(i32* @key_types_sem)
  %8 = load %struct.key_type*, %struct.key_type** %2, align 8
  %9 = call i32 @key_gc_keytype(%struct.key_type* %8)
  %10 = load %struct.key_type*, %struct.key_type** %2, align 8
  %11 = getelementptr inbounds %struct.key_type, %struct.key_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @up_read(i32* @key_types_sem)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @key_gc_keytype(%struct.key_type*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
