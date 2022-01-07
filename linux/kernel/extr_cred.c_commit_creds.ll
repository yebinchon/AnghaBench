; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_commit_creds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_commit_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.cred*, %struct.cred*, i64, i64 }
%struct.cred = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"commit_creds(%p{%d,%d})\00", align 1
@suid_dumpable = common dso_local global i32 0, align 4
@PROC_EVENT_UID = common dso_local global i32 0, align 4
@PROC_EVENT_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_creds(%struct.cred* %0) #0 {
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.cred* %0, %struct.cred** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load %struct.cred*, %struct.cred** %7, align 8
  store %struct.cred* %8, %struct.cred** %4, align 8
  %9 = load %struct.cred*, %struct.cred** %2, align 8
  %10 = load %struct.cred*, %struct.cred** %2, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 9
  %12 = call i32 @atomic_read(i32* %11)
  %13 = load %struct.cred*, %struct.cred** %2, align 8
  %14 = call i32 @read_cred_subscribers(%struct.cred* %13)
  %15 = call i32 @kdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.cred* %9, i32 %12, i32 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load %struct.cred*, %struct.cred** %17, align 8
  %19 = load %struct.cred*, %struct.cred** %4, align 8
  %20 = icmp ne %struct.cred* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.cred*, %struct.cred** %2, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 9
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp slt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.cred*, %struct.cred** %2, align 8
  %30 = call i32 @get_cred(%struct.cred* %29)
  %31 = load %struct.cred*, %struct.cred** %4, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cred*, %struct.cred** %2, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @uid_eq(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %1
  %40 = load %struct.cred*, %struct.cred** %4, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cred*, %struct.cred** %2, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @gid_eq(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %39
  %49 = load %struct.cred*, %struct.cred** %4, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cred*, %struct.cred** %2, align 8
  %53 = getelementptr inbounds %struct.cred, %struct.cred* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @uid_eq(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load %struct.cred*, %struct.cred** %4, align 8
  %59 = getelementptr inbounds %struct.cred, %struct.cred* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cred*, %struct.cred** %2, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @gid_eq(i32 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.cred*, %struct.cred** %4, align 8
  %68 = load %struct.cred*, %struct.cred** %2, align 8
  %69 = call i32 @cred_cap_issubset(%struct.cred* %67, %struct.cred* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %66, %57, %48, %39, %1
  %72 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @suid_dumpable, align 4
  %81 = call i32 @set_dumpable(i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = call i32 (...) @smp_wmb()
  br label %86

86:                                               ; preds = %82, %66
  %87 = load %struct.cred*, %struct.cred** %2, align 8
  %88 = getelementptr inbounds %struct.cred, %struct.cred* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cred*, %struct.cred** %4, align 8
  %91 = getelementptr inbounds %struct.cred, %struct.cred* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @uid_eq(i32 %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  %96 = load %struct.cred*, %struct.cred** %2, align 8
  %97 = call i32 @key_fsuid_changed(%struct.cred* %96)
  br label %98

98:                                               ; preds = %95, %86
  %99 = load %struct.cred*, %struct.cred** %2, align 8
  %100 = getelementptr inbounds %struct.cred, %struct.cred* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cred*, %struct.cred** %4, align 8
  %103 = getelementptr inbounds %struct.cred, %struct.cred* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @gid_eq(i32 %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load %struct.cred*, %struct.cred** %2, align 8
  %109 = call i32 @key_fsgid_changed(%struct.cred* %108)
  br label %110

110:                                              ; preds = %107, %98
  %111 = load %struct.cred*, %struct.cred** %2, align 8
  %112 = call i32 @alter_cred_subscribers(%struct.cred* %111, i32 2)
  %113 = load %struct.cred*, %struct.cred** %2, align 8
  %114 = getelementptr inbounds %struct.cred, %struct.cred* %113, i32 0, i32 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.cred*, %struct.cred** %4, align 8
  %117 = getelementptr inbounds %struct.cred, %struct.cred* %116, i32 0, i32 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = icmp ne %struct.TYPE_2__* %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load %struct.cred*, %struct.cred** %2, align 8
  %122 = getelementptr inbounds %struct.cred, %struct.cred* %121, i32 0, i32 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  br label %126

126:                                              ; preds = %120, %110
  %127 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %128 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %127, i32 0, i32 1
  %129 = load %struct.cred*, %struct.cred** %128, align 8
  %130 = load %struct.cred*, %struct.cred** %2, align 8
  %131 = call i32 @rcu_assign_pointer(%struct.cred* %129, %struct.cred* %130)
  %132 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 0
  %134 = load %struct.cred*, %struct.cred** %133, align 8
  %135 = load %struct.cred*, %struct.cred** %2, align 8
  %136 = call i32 @rcu_assign_pointer(%struct.cred* %134, %struct.cred* %135)
  %137 = load %struct.cred*, %struct.cred** %2, align 8
  %138 = getelementptr inbounds %struct.cred, %struct.cred* %137, i32 0, i32 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load %struct.cred*, %struct.cred** %4, align 8
  %141 = getelementptr inbounds %struct.cred, %struct.cred* %140, i32 0, i32 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = icmp ne %struct.TYPE_2__* %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %126
  %145 = load %struct.cred*, %struct.cred** %4, align 8
  %146 = getelementptr inbounds %struct.cred, %struct.cred* %145, i32 0, i32 8
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @atomic_dec(i32* %148)
  br label %150

150:                                              ; preds = %144, %126
  %151 = load %struct.cred*, %struct.cred** %4, align 8
  %152 = call i32 @alter_cred_subscribers(%struct.cred* %151, i32 -2)
  %153 = load %struct.cred*, %struct.cred** %2, align 8
  %154 = getelementptr inbounds %struct.cred, %struct.cred* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cred*, %struct.cred** %4, align 8
  %157 = getelementptr inbounds %struct.cred, %struct.cred* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @uid_eq(i32 %155, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %150
  %162 = load %struct.cred*, %struct.cred** %2, align 8
  %163 = getelementptr inbounds %struct.cred, %struct.cred* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.cred*, %struct.cred** %4, align 8
  %166 = getelementptr inbounds %struct.cred, %struct.cred* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @uid_eq(i32 %164, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %161
  %171 = load %struct.cred*, %struct.cred** %2, align 8
  %172 = getelementptr inbounds %struct.cred, %struct.cred* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.cred*, %struct.cred** %4, align 8
  %175 = getelementptr inbounds %struct.cred, %struct.cred* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @uid_eq(i32 %173, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %170
  %180 = load %struct.cred*, %struct.cred** %2, align 8
  %181 = getelementptr inbounds %struct.cred, %struct.cred* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.cred*, %struct.cred** %4, align 8
  %184 = getelementptr inbounds %struct.cred, %struct.cred* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @uid_eq(i32 %182, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %179, %170, %161, %150
  %189 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %190 = load i32, i32* @PROC_EVENT_UID, align 4
  %191 = call i32 @proc_id_connector(%struct.task_struct* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %179
  %193 = load %struct.cred*, %struct.cred** %2, align 8
  %194 = getelementptr inbounds %struct.cred, %struct.cred* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cred*, %struct.cred** %4, align 8
  %197 = getelementptr inbounds %struct.cred, %struct.cred* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @gid_eq(i32 %195, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %192
  %202 = load %struct.cred*, %struct.cred** %2, align 8
  %203 = getelementptr inbounds %struct.cred, %struct.cred* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.cred*, %struct.cred** %4, align 8
  %206 = getelementptr inbounds %struct.cred, %struct.cred* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @gid_eq(i32 %204, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %201
  %211 = load %struct.cred*, %struct.cred** %2, align 8
  %212 = getelementptr inbounds %struct.cred, %struct.cred* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.cred*, %struct.cred** %4, align 8
  %215 = getelementptr inbounds %struct.cred, %struct.cred* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @gid_eq(i32 %213, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %210
  %220 = load %struct.cred*, %struct.cred** %2, align 8
  %221 = getelementptr inbounds %struct.cred, %struct.cred* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.cred*, %struct.cred** %4, align 8
  %224 = getelementptr inbounds %struct.cred, %struct.cred* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @gid_eq(i32 %222, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %219, %210, %201, %192
  %229 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %230 = load i32, i32* @PROC_EVENT_GID, align 4
  %231 = call i32 @proc_id_connector(%struct.task_struct* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %219
  %233 = load %struct.cred*, %struct.cred** %4, align 8
  %234 = call i32 @put_cred(%struct.cred* %233)
  %235 = load %struct.cred*, %struct.cred** %4, align 8
  %236 = call i32 @put_cred(%struct.cred* %235)
  ret i32 0
}

declare dso_local i32 @kdebug(i8*, %struct.cred*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @read_cred_subscribers(%struct.cred*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @cred_cap_issubset(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @set_dumpable(i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @key_fsuid_changed(%struct.cred*) #1

declare dso_local i32 @key_fsgid_changed(%struct.cred*) #1

declare dso_local i32 @alter_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @proc_id_connector(%struct.task_struct*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
