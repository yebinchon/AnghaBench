#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  yaml_event_t ;
typedef  int /*<<< orphan*/  yaml_emitter_t ;
typedef  int /*<<< orphan*/  yaml_char_t ;
struct dt_info {int /*<<< orphan*/  dt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  YAML_ANY_SEQUENCE_STYLE ; 
 scalar_t__ YAML_SEQ_TAG ; 
 int /*<<< orphan*/  YAML_UTF8_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(FILE *f, struct dt_info *dti)
{
	yaml_emitter_t emitter;
	yaml_event_t event;

	FUNC4(&emitter);
	FUNC5(&emitter, f);
	FUNC9(&event, YAML_UTF8_ENCODING);
	FUNC3(&emitter, &event);

	FUNC1(&event, NULL, NULL, NULL, 0);
	FUNC3(&emitter, &event);

	FUNC7(&event, NULL, (yaml_char_t *)YAML_SEQ_TAG, 1, YAML_ANY_SEQUENCE_STYLE);
	FUNC3(&emitter, &event);

	FUNC10(dti->dt, &emitter);

	FUNC6(&event);
	FUNC3(&emitter, &event);

	FUNC0(&event, 0);
	FUNC3(&emitter, &event);

	FUNC8(&event);
	FUNC3(&emitter, &event);

	FUNC2(&emitter);
}